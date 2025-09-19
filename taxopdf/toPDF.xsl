<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns="http://www.tei-c.org/ns/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xhtml="http://www.w3.org/TR/xhtml/strict" xmlns:tp="http://www.plazi.org/taxpub" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:ns="http://www.tei-c.org/ns/1.0" xmlns:mtl="http://www.mulberrytech.com/taglib" xmlns:mathml="http://www.w3.org/1998/Math/MathML" xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" xmlns:jats="http://jats.nlm.nih.gov" xmlns:hfp="http://www.w3.org/2001/XMLSchema-hasFacetAndProperty" xmlns:dxdy="http://mulberrytech.com/2014/dxdy" xmlns:dcr="http://www.isocat.org/ns/dcr" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:ali="http://www.niso.org/schemas/ali/1.0/" xmlns:aid5="http://ns.adobe.com/AdobeInDesign/5.0/" xmlns:aid="http://ns.adobe.com/AdobeInDesign/4.0/">
	<xsl:param name="volume-article">981</xsl:param>
	<xsl:param name="base-urn-links">http://zoobank.org/</xsl:param>
	<xsl:param name="urn-article">urn:lsid:zoobank.org:pub:D927CD99-C3CD-4FA9-A73F-B3219C6D05E1</xsl:param>
	<xsl:output method="xml" version="1.0" indent="yes"/>
	<xsl:attribute-set name="links">
		<xsl:attribute name="color">blue</xsl:attribute>
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="bold">
		<xsl:attribute name="font-weight">900</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="italic">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>
	<xsl:template match="/">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4First" page-height="297mm" page-width="210mm">
					<fo:region-body margin-top="3cm" margin-left="1.5cm" margin-right="1.5cm" margin-bottom="0.5cm"/>
					<fo:region-before extent="3cm" region-name="first-head"/>
					<fo:region-after extent="0.5cm"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="A4dt" page-height="297mm" page-width="210mm">
					<fo:region-body margin-top="1cm" margin-left="1.5cm" margin-right="1.5cm" margin-bottom="0.5cm"/>
					<fo:region-before extent="1cm" region-name="right-head"/>
					<fo:region-after extent="0.5cm"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="A4gh" page-height="297mm" page-width="210mm">
					<fo:region-body margin-top="1cm" margin-left="1.5cm" margin-right="1.5cm" margin-bottom="0.5cm"/>
					<fo:region-before extent="1cm" region-name="left-head"/>
					<fo:region-after extent="0.5cm"/>
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="A4">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="A4First" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="A4dt" odd-or-even="odd"/>
						<fo:conditional-page-master-reference master-reference="A4gh" odd-or-even="even"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="A4">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="center">
						<fo:page-number/>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="first-head">
					<fo:block font-size="10pt">
						<fo:table>
							<fo:table-column column-width="3.2cm"/>
							<fo:table-column/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell number-rows-spanned="3" border="0.3mm solid black" margin-left="1.5cm">
										<fo:block text-align="center">
											<fo:external-graphic src="file:///G:/partage/2025-09-16-lsx/taxopdf/ejt_logo.jpg" scaling="uniform" content-height="2cm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.3mm solid black">
										<fo:block>European Journal of Taxonomy <xsl:value-of select="$volume-article"/>:<xsl:text> </xsl:text><xsl:value-of select="//*[@type='pagination']"/>.</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>ISSN 2118-9773 </fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="blue" text-decoration="underline">
											<fo:basic-link external-destination="{//ns:idno[@type='DOI_Crossref']}">
												<xsl:value-of select="//ns:idno[@type='DOI_Crossref']"/>
											</fo:basic-link>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block color="blue" text-decoration="underline">
											<fo:basic-link external-destination="www.europeanjournaloftaxonomy.eu">www.europeanjournaloftaxonomy.eu</fo:basic-link>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:external-graphic src="file:///G:/partage/2025-09-16-lsx/taxopdf/cc.png" scaling="uniform" content-width="2cm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<xsl:call-template name="authors-names"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block margin-left="1.5cm" margin-right="1.5cm">This work is licensed under a Creative Commons Attribution License (CC BY 4.0).
</fo:block>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="right-head">
					<fo:block text-align="right">right</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="left-head">
					<fo:block text-align="left">left</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="10pt">
						<fo:block text-align="center">
							<fo:block font-weight="900">Research article</fo:block>
							<fo:block margin-top="0.3cm" margin-bottom="0.3cm" xsl:use-attribute-sets="links">
								<fo:basic-link external-destination="{$base-urn-links}{$urn-article}">
									<xsl:value-of select="$urn-article"/>
								</fo:basic-link>
							</fo:block>
							<xsl:apply-templates select="//ns:titleStmt/ns:title" mode="main-title"/>
							<xsl:call-template name="authors-list"/>
						</fo:block>
						
						<xsl:apply-templates select="/ns:TEI/ns:text/ns:body/ns:div"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="ns:titleStmt/ns:title" mode="main-title">
		<fo:block margin-bottom="0.5cm" font-size="14pt" text-align="center" font-weight="900">
			<xsl:value-of select="//ns:titleStmt/ns:title"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="authors-list">
		<xsl:for-each select="//ns:author">
			<xsl:value-of select="ns:name"/>
			<fo:inline vertical-align="super" font-size="8pt">
				<xsl:value-of select="position()"/>
			</fo:inline>
			<xsl:choose>
				<xsl:when test="position() &lt; count(//ns:author)-1">, </xsl:when>
				<xsl:when test="position() = count(//ns:author)-1 and count(//ns:author) > 1"> &amp; </xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="authors-names">
		<xsl:param name="author" select="//ns:author[1]"/>
		<xsl:value-of select="substring-after($author/ns:name,' ')"/>
		<xsl:choose>
			<xsl:when test="count(//ns:author) = 2 and count(preceding-sibling::ns:author)=0">
				<xsl:call-template name="authors-names">
					<xsl:with-param name="author" select="following-sibling::ns:author"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="count(//ns:author) > 2">
				<fo:inline font-style="italic"> et al.</fo:inline>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
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
	<xsl:template match="*|ns:*" priority="-0.1">
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
			<xsl:when test="substring-after(name(),':')='named-content'"><fo:inline border="red">DEBUG-><xsl:value-of select="name()"/><xsl:apply-templates select="*|text()"/></fo:inline></xsl:when>
			<xsl:otherwise><fo:inline border="red">DEBUG-><xsl:value-of select="name()"/><xsl:apply-templates select="*|text()"/></fo:inline></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="ns:term">
		<fo:inline>
			<xsl:apply-templates select="namespace::*/*|text()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template name="tp:taxon-name">
		<xsl:apply-templates select="namespace::*/*|text()"/>
	</xsl:template>
	<xsl:template name="tp:taxon-name-part">
		<xsl:apply-templates select="namespace::*/*|text()"/>
	</xsl:template>
	<xsl:template match="ns:head">
	<fo:block xsl:use-attribute-sets="bold">
		<xsl:apply-templates select="namespace::*/*|text()"/>
	</fo:block>
	</xsl:template>
</xsl:stylesheet>