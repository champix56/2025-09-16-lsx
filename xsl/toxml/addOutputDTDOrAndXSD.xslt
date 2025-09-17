<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="ISO-8859-1" indent="yes" doctype-system="http://clanphs.free.fr/orsys/xml/facturationtransfert.dtd"/>
	<!--comment-->
	<xsl:template match="/">
		<xsl:comment>DOCTYPE grace a xsl:output</xsl:comment>
		<factures xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://clanphs.free.fr/orsys/xml/facturationtransfert.xsd">
		<xsl:comment>Schema grace aux attribut pour le schema xsd</xsl:comment>
		</factures>
	</xsl:template>
</xsl:stylesheet>
