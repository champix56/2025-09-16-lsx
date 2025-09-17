<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8"/>
	<xsl:template match="/">numfacture;idclient;datefacture;nblignes;totalht:nom client<xsl:for-each select="//facture">
	<xsl:text>
</xsl:text>
		<xsl:value-of select="@numfacture"/>;<xsl:value-of select="@idclient"/>;<xsl:value-of select="@datefacture"/>;<xsl:value-of select="count(lignes/ligne)"/>;<xsl:value-of select="sum(.//stotligne)"/>;<xsl:value-of select="normalize-space(//destinataire)"/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
