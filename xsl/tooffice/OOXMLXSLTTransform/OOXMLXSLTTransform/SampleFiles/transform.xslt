<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:n2="urn:hl7-org:v3"
    xmlns:map="urn:internal"
	exclude-result-prefixes="n2 xs xsi xsl map"
	>
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
    <w:document xmlns:ve="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml">
      <w:body>
        <w:p w:rsidR="00E633B8" w:rsidRPr="002A1D51" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
          </w:pPr>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
            <w:t>But</w:t>
          </w:r>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
            </w:rPr>
            <w:t xml:space="preserve"> : </w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="00A41C70" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="00A41C70" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:proofErr w:type="spellStart"/>
          <w:r>
            <w:t>
              <xsl:value-of select="n2:projetTutore/n2:but"/>
            </w:t>
          </w:r>
          <w:proofErr w:type="spellEnd"/>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:ind w:firstLine="708"/>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="00A41C70" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:ind w:firstLine="708"/>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="002A1D51" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
          </w:pPr>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
            <w:t>Principe</w:t>
          </w:r>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
            </w:rPr>
            <w:t> :</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="00A41C70" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:proofErr w:type="spellStart"/>
          <w:r>
            <w:t>
              <xsl:value-of select="n2:projetTutore/n2:principe"/>
            </w:t>
          </w:r>
          <w:proofErr w:type="spellEnd"/>
        </w:p>
        <w:p w:rsidR="005B4D42" w:rsidRPr="00A41C70" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="002A1D51" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
          </w:pPr>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
            <w:t>Mise en œuvre</w:t>
          </w:r>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
            </w:rPr>
            <w:t> :</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="00A41C70" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:r>
            <w:t>Pour mettre en œuvre mon projet, j’ai utilisé divers outils :</w:t>
          </w:r>
        </w:p>
        <xsl:for-each select="//n2:tool">
          <w:p w:rsidR="00E633B8" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:numPr>
              <w:ilvl w:val="0"/>
              <w:numId w:val="1"/>
            </w:numPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:r>
            <w:t>
              <xsl:value-of select="."/>
            </w:t>
          </w:r>
        </w:p>
        </xsl:for-each>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:r>
            <w:t>Pour le fonctionnement du projet, nous avons du créer plusieurs modules :</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:ind w:left="1770"/>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <xsl:for-each select="//n2:module"> <w:p w:rsidR="00E633B8" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:numPr>
              <w:ilvl w:val="0"/>
              <w:numId w:val="1"/>
            </w:numPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:proofErr w:type="spellStart"/>
          <w:r>
            <w:t>
              <xsl:value-of select="."/>
            </w:t>
          </w:r>
          <w:proofErr w:type="spellEnd"/>
        </w:p>
        </xsl:for-each>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:r>
            <w:tab/>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="002A1D51" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
            </w:rPr>
          </w:pPr>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
              <w:u w:val="single"/>
            </w:rPr>
            <w:t>Conclusion</w:t>
          </w:r>
          <w:r w:rsidRPr="002A1D51">
            <w:rPr>
              <w:b/>
              <w:smallCaps/>
            </w:rPr>
            <w:t> :</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="00A41C70" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="both"/>
          </w:pPr>
          <w:proofErr w:type="spellStart"/>
          <w:r>
            <w:t>
              <xsl:value-of select="//n2:conclusion"/>
            </w:t>
          </w:r>
          <w:proofErr w:type="spellEnd"/>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="center"/>
          </w:pPr>
          <w:r>
            <w:br w:type="page"/>
          </w:r>
          <w:r>
            <w:rPr>
              <w:noProof/>
            </w:rPr>
            <w:lastRenderedPageBreak/>
            <w:drawing>
              <wp:inline distT="0" distB="0" distL="0" distR="0">
                <wp:extent cx="5753100" cy="2905125"/>
                <wp:effectExtent l="19050" t="0" r="0" b="0"/>
                <wp:docPr id="1" name="Image 1"/>
                <wp:cNvGraphicFramePr>
                  <a:graphicFrameLocks xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" noChangeAspect="1"/>
                </wp:cNvGraphicFramePr>
                <a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
                  <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture">
                    <pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
                      <pic:nvPicPr>
                        <pic:cNvPr id="0" name="Picture 1"/>
                        <pic:cNvPicPr>
                          <a:picLocks noChangeAspect="1" noChangeArrowheads="1"/>
                        </pic:cNvPicPr>
                      </pic:nvPicPr>
                      <pic:blipFill>
                        <a:blip r:embed="rId7" cstate="print"/>
                        <a:srcRect/>
                        <a:stretch>
                          <a:fillRect/>
                        </a:stretch>
                      </pic:blipFill>
                      <pic:spPr bwMode="auto">
                        <a:xfrm>
                          <a:off x="0" y="0"/>
                          <a:ext cx="5753100" cy="2905125"/>
                        </a:xfrm>
                        <a:prstGeom prst="rect">
                          <a:avLst/>
                        </a:prstGeom>
                        <a:noFill/>
                        <a:ln w="9525">
                          <a:noFill/>
                          <a:miter lim="800000"/>
                          <a:headEnd/>
                          <a:tailEnd/>
                        </a:ln>
                      </pic:spPr>
                    </pic:pic>
                  </a:graphicData>
                </a:graphic>
              </wp:inline>
            </w:drawing>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="center"/>
          </w:pPr>
          <w:r>
            <w:t>Fig. 1 : Imprime écran du jeu en mode console</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="center"/>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="center"/>
          </w:pPr>
          <w:r>
            <w:rPr>
              <w:noProof/>
            </w:rPr>
            <w:drawing>
              <wp:inline distT="0" distB="0" distL="0" distR="0">
                <wp:extent cx="5753100" cy="4314825"/>
                <wp:effectExtent l="19050" t="0" r="0" b="0"/>
                <wp:docPr id="2" name="Image 2"/>
                <wp:cNvGraphicFramePr>
                  <a:graphicFrameLocks xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" noChangeAspect="1"/>
                </wp:cNvGraphicFramePr>
                <a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
                  <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture">
                    <pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
                      <pic:nvPicPr>
                        <pic:cNvPr id="0" name="Picture 2"/>
                        <pic:cNvPicPr>
                          <a:picLocks noChangeAspect="1" noChangeArrowheads="1"/>
                        </pic:cNvPicPr>
                      </pic:nvPicPr>
                      <pic:blipFill>
                        <a:blip r:embed="rId8" cstate="print"/>
                        <a:srcRect/>
                        <a:stretch>
                          <a:fillRect/>
                        </a:stretch>
                      </pic:blipFill>
                      <pic:spPr bwMode="auto">
                        <a:xfrm>
                          <a:off x="0" y="0"/>
                          <a:ext cx="5753100" cy="4314825"/>
                        </a:xfrm>
                        <a:prstGeom prst="rect">
                          <a:avLst/>
                        </a:prstGeom>
                        <a:noFill/>
                        <a:ln w="9525">
                          <a:noFill/>
                          <a:miter lim="800000"/>
                          <a:headEnd/>
                          <a:tailEnd/>
                        </a:ln>
                      </pic:spPr>
                    </pic:pic>
                  </a:graphicData>
                </a:graphic>
              </wp:inline>
            </w:drawing>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="center"/>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
          </w:pPr>
          <w:r>
            <w:t xml:space="preserve">Fig. 1 : fichier </w:t>
          </w:r>
          <w:r w:rsidR="005B4D42">
            <w:t>générer</w:t>
          </w:r>
          <w:r>
            <w:t xml:space="preserve"> du jeu en mode </w:t>
          </w:r>
          <w:proofErr w:type="spellStart"/>
          <w:r>
            <w:t>OpenGL</w:t>
          </w:r>
          <w:proofErr w:type="spellEnd"/>
          <w:r>
            <w:t xml:space="preserve"> (extension en cours de </w:t>
          </w:r>
          <w:r w:rsidR="005B4D42">
            <w:t>développement</w:t>
          </w:r>
          <w:r>
            <w:t>)</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:jc w:val="center"/>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
          </w:pPr>
          <w:r>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
            <w:br w:type="page"/>
          </w:r>
          <w:r>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
            <w:lastRenderedPageBreak/>
            <w:t>Extrait de code :</w:t>
          </w:r>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRDefault="00E633B8" w:rsidP="00E633B8">
          <w:pPr>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
          </w:pPr>
        </w:p>
        <w:p w:rsidR="00E633B8" w:rsidRPr="001D592C" w:rsidRDefault="005B4D42" w:rsidP="00E633B8">
          <w:pPr>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
          </w:pPr>
          <w:proofErr w:type="spellStart"/>
          <w:r>
            <w:rPr>
              <w:rFonts w:ascii="Arial" w:hAnsi="Arial" w:cs="Arial"/>
              <w:sz w:val="20"/>
              <w:szCs w:val="20"/>
            </w:rPr>
            <w:t><xsl:value-of select="//n2:extrait"/></w:t>
          </w:r>
          <w:proofErr w:type="spellEnd"/>
        </w:p>
        <w:p w:rsidR="009F7CCD" w:rsidRDefault="009F7CCD"/>
        <w:sectPr w:rsidR="009F7CCD" w:rsidSect="008D556C">
          <w:headerReference w:type="default" r:id="rId9"/>
          <w:footerReference w:type="default" r:id="rId10"/>
          <w:pgSz w:w="11906" w:h="16838"/>
          <w:pgMar w:top="1418" w:right="1418" w:bottom="142" w:left="1418" w:header="709" w:footer="709" w:gutter="0"/>
          <w:cols w:space="708"/>
          <w:docGrid w:linePitch="360"/>
        </w:sectPr>
      </w:body>
    </w:document>
  
  </xsl:template>
  <xsl:template match="*">
    <xsl:value-of select="."/>
  </xsl:template>
  <xsl:template match="module | tool">
    
    
    
    
  </xsl:template>
</xsl:stylesheet>
