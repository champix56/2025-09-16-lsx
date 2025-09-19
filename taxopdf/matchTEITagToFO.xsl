<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns="http://www.tei-c.org/ns/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xhtml="http://www.w3.org/TR/xhtml/strict" xmlns:tp="http://www.plazi.org/taxpub" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:ns="http://www.tei-c.org/ns/1.0" xmlns:mtl="http://www.mulberrytech.com/taglib" xmlns:mathml="http://www.w3.org/1998/Math/MathML" xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" xmlns:jats="http://jats.nlm.nih.gov" xmlns:hfp="http://www.w3.org/2001/XMLSchema-hasFacetAndProperty" xmlns:dxdy="http://mulberrytech.com/2014/dxdy" xmlns:dcr="http://www.isocat.org/ns/dcr" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:ali="http://www.niso.org/schemas/ali/1.0/" xmlns:aid5="http://ns.adobe.com/AdobeInDesign/5.0/" xmlns:aid="http://ns.adobe.com/AdobeInDesign/4.0/">
<xsl:include href="styles.xsl"/>
<xsl:template match="ns:div">
		<fo:block>
			<xsl:apply-templates select="ns:*|text()"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="ns:p">
		<fo:block margin-bottom="0.5cm" margin-top="0.5cm">
			<xsl:apply-templates select="ns:*|text()"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="ns:hi">
		<fo:inline>
			<xsl:apply-templates select="@rend"/>
			<xsl:apply-templates select="ns:*|text()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template match="*|ns:*|tp:*|jats:*" priority="-0.5">
		<fo:inline color="red" border="0.3mm solid orange">
			DEBUG :<xsl:value-of select="name()"/> -> <xsl:apply-templates select="*|text()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template match="ns:ref">
		<fo:basic-link xsl:use-attribute-sets="links" external-destination="@target">
			<xsl:apply-templates select="text()|*"/>
		</fo:basic-link>
	</xsl:template>
	<xsl:template match="@rend|jats:*">
	<fo:inline>
		<xsl:choose>
			<xsl:when test=".='italic' or substring-after(name(),':')='italic'">
				<xsl:attribute name="font-style">italic</xsl:attribute>
			</xsl:when>
			<xsl:when test=".='bold'  or substring-after(name(),':')='bold'">
				<xsl:attribute name="font-weight">900</xsl:attribute>
			</xsl:when>
			<xsl:when test=".='sup'">
				<!-- vertical-align="super" font-size="8pt"-->
				<xsl:attribute name="vertical-align">super</xsl:attribute>
				<xsl:attribute name="font-size">8pt</xsl:attribute>
			</xsl:when>
			<xsl:when test="substring-after(name(),':')='named-content'">
				<fo:inline border="0.3mm solid red">DEBUG-><xsl:value-of select="name()"/><xsl:apply-templates select="*|text()"/></fo:inline>
			</xsl:when>
			<xsl:otherwise>
				<fo:inline border="0.3mm solid red">DEBUG-><xsl:value-of select="name()"/><xsl:apply-templates select="*|text()"/></fo:inline>
			</xsl:otherwise>
		</xsl:choose>
		</fo:inline>
	</xsl:template>
	<xsl:template match="ns:term">
		<fo:inline>
			<xsl:apply-templates select="*|text()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template match="tp:taxon-name">
		<fo:inline>
			<xsl:apply-templates select="*|text()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template match="tp:taxon-name-part">
		<fo:inline>
			<xsl:apply-templates select="*|text()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template match="ns:head">
		<fo:block xsl:use-attribute-sets="bold">
			<xsl:apply-templates select="namespace::*/*|text()"/>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>
