<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="facture" mode="sommaire">
		<li>
			<a href="#F{@numfacture}">Facture N°<xsl:value-of select="@numfacture"/></a>
		</li>
	</xsl:template>
</xsl:stylesheet>