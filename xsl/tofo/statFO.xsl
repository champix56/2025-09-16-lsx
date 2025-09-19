<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="styleFO.xsl"/>
	<xsl:output method="xml" version="1.0" indent="yes"/>
	<xsl:param name="signature">champix</xsl:param>
	<xsl:output method="xml" version="1.0"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<!--def. des formats de papier-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4Portrait" page-height="210mm" page-width="297mm">
					<fo:region-body margin-top="2cm" margin-left="2cm"/>					
					<fo:region-before extent="2cm" />
					<fo:region-after extent="1cm"/>
					<fo:region-start extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="A4Portrait">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block>
						<fo:table>
							<fo:table-column column-width="40mm"/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row height="2cm">
									<fo:table-cell>
										<fo:block>
											<fo:external-graphic src="file:///G:/partage/2025-09-16-lsx/MNHN-logo.jpg" scaling="uniform"  content-height="1.9cm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center" text-align="center">
										<fo:block  font-size="24pt" font-style="italic">Museum d'histoire naturelle</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block xsl:use-attribute-sets="center">
						<fo:block xsl:use-attribute-sets="bold primary-foreground-color">Analyse statistique des factures</fo:block>
						<fo:table>
							<fo:table-body>
								<xsl:apply-templates select="/facturation/statFile/facturesStat"/>
							</fo:table-body>
						</fo:table>
						<fo:block xsl:use-attribute-sets="bold primary-foreground-color">Graphique statistique des factures</fo:block>
					</fo:block>
					
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="facturesStat">
		<fo:table-row>
			<fo:table-cell>
				<fo:block>Nombre moyen d'unité(s) / article dans les factures</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block><xsl:value-of select="avgNbUnitFacture"/></fo:block>
			</fo:table-cell>
		</fo:table-row>
			<fo:table-row>
			<fo:table-cell>
				<fo:block>prix moyen / article dans les factures</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block><xsl:value-of select="ligneAvgFact"/></fo:block>
			</fo:table-cell>
		</fo:table-row>
			<fo:table-row>
			<fo:table-cell>
				<fo:block>nb de ligne complet</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block><xsl:value-of select="nbLignesFact"/></fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>
</xsl:stylesheet>