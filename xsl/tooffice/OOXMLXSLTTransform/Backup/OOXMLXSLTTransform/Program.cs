using System;
using System.IO;
using System.Xml;
using System.Xml.Xsl;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;

namespace OOXMLXSLTTransform
{
    internal class Program
    {
        private static string _hl7Path;
        private static string _newDocPath;
        private static string _templatePath;
        private static string _xsltPath;

        private static void Main(string[] args)
        {
            // Get Paths from command line
            _hl7Path = string.Concat(Environment.CurrentDirectory, "\\", args[0]);
            _templatePath = string.Concat(Environment.CurrentDirectory, "\\", args[1]);
            _xsltPath = string.Concat(Environment.CurrentDirectory, "\\", args[2]);
            _newDocPath = string.Concat(Environment.CurrentDirectory, "\\", args[3]);

            byte[] sourceBytes = File.ReadAllBytes(_templatePath);


            using (MemoryStream _workingMemoryStream = new MemoryStream())
            {
                _workingMemoryStream.Write(sourceBytes, 0, sourceBytes.Length);

                // Open Template
                using (WordprocessingDocument template = WordprocessingDocument.Open(_workingMemoryStream, true))
                {
                    XmlDocument hl7Doc = new XmlDocument();
                    hl7Doc.Load(_hl7Path);

                    // Transform
                    StringWriter newXML = new StringWriter();
                    XmlWriter writer = XmlWriter.Create(newXML);

                    XslCompiledTransform transform = new XslCompiledTransform();
                    transform.Load(_xsltPath, new XsltSettings(true, true), null);
                    if (writer != null)
                    {
                        transform.Transform(hl7Doc, writer);
                    }

                    // Get new XML
                    XmlDocument doc = new XmlDocument();
                    doc.LoadXml(newXML.ToString());

                    // Update document with new Body
                    if (doc.DocumentElement != null)
                    {
                        template.MainDocumentPart.Document.Body = new Body(doc.DocumentElement.InnerXml);
                        template.MainDocumentPart.Document.Save();
                    }
                }
            
                // Create a new document based on updated template
                if (!string.IsNullOrEmpty(_newDocPath))
                {
                    using (FileStream fileStream = new FileStream(_newDocPath, FileMode.Create))
                    {
                        _workingMemoryStream.WriteTo(fileStream);
                    }
                }
            }
        }
    }
}