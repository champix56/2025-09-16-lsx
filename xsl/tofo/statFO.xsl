<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="styleFO.xsl"/>
	<xsl:output method="xml" version="1.0" indent="yes"/>
	<xsl:param name="signature">champix</xsl:param>
	<xsl:output method="xml" version="1.0"/>
	<xsl:variable name="maxLAVG" select="max(//factures//ligneAvg)"/>
	<xsl:variable name="maxNBL" select="max(//factures//nbLignes)"/>
	<xsl:variable name="nbFactures" select="count(//facture)"/>
	<xsl:variable name="pasVerticalLAVG" select="100 div $maxLAVG"/>
	<xsl:variable name="pasVerticalNBL" select="100 div $maxNBL"/>
	<xsl:variable name="pasHorizontal" select="100 div $nbFactures"/>
	<xsl:variable name="histogramSpacing" select="1"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--def. des formats de papier-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4Portrait" page-height="210mm" page-width="297mm">
					<fo:region-body margin-top="2cm" margin-left="2cm" column-count="2"/>
					<fo:region-before extent="2cm"/>
					<fo:region-after extent="1cm"/>
					<fo:region-start extent="2cm"/>
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
											<fo:external-graphic src="file:///G:/partage/2025-09-16-lsx/MNHN-logo.jpg" scaling="uniform" content-height="1.9cm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center" text-align="center">
										<fo:block font-size="24pt" font-style="italic">Museum d'histoire naturelle</fo:block>
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
						<fo:block text-align="center">
							<fo:instream-foreign-object content-height="12cm" content-width="12cm" scaling="uniform">
								<svg viewBox="-20 -20 140 140" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<!--variables pour le calcul de proportions-->
									<desc/>
									<defs>
										<symbol id="Axes">
											<line x1="20" y1="0" x2="20" y2="101" stroke="black" stroke-width="2"/>
											<polygon points="20,-1 25,5 15,5"/>
											<text x="112" y="115">X</text>
											<line x1="20" y1="100" x2="120" y2="100" stroke="black" stroke-width="2"/>
											<polygon points="121,100 115,95 115,105"/>
											<text x="5" y="10">Y</text>
											<rect x="40" y="97.5" width="1" height="5" style="fill:black"/>
											<text x="35" y="115">10</text>
											<rect x="70" y="97.5" width="1" height="5" style="fill:black"/>
											<text x="65" y="115">20</text>
											<rect x="100" y="97.5" width="1" height="5" style="fill:black"/>
											<text x="95" y="115">30</text>
											<rect x="18.5" y="20" width="5" height="1" style="fill:black"/>
											<text x="3" y="25">10</text>
											<rect x="18.5" y="50" width="5" height="1" style="fill:black"/>
											<text x="3" y="55">20</text>
											<rect x="18" y="80" width="5" height="1" style="fill:black"/>
											<text x="3" y="85">30</text>
										</symbol>
										<linearGradient id="effetArrondiVertical" x1="0%" x2="100%" y1="20%" y2="0">
											<stop offset="0%" stop-color="#B7CA79"/>
											<stop offset="80%" stop-color="#677E52"/>
										</linearGradient>
									</defs>
									<xsl:apply-templates select="//facture" mode="histogramme"/>
									<xsl:apply-templates select="//facture" mode="nuage-points"/>
									<use xlink:href="#Axes" x="-15" y="0"/>
								</svg>
							</fo:instream-foreign-object>
						</fo:block>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="facture" mode="histogramme">
		<xsl:variable name="height" select="$pasVerticalLAVG * ligneAvg"/>
		<rect x="{((position() - 1) * $pasHorizontal) + 7}" y="{100 - $height}" width="{$pasHorizontal - $histogramSpacing}" height="{$height}" fill="url(#effetArrondiVertical)"/>
	</xsl:template>
	<xsl:template match="facture" mode="nuage-points">
		<xsl:variable name="height" select="$pasVerticalNBL * nbLignes"/>
		<xsl:variable name="cx" select="((position() - 1) * $pasHorizontal)+7+(($pasHorizontal - $histogramSpacing) div 2)"/>
		<xsl:if test="following-sibling::facture">
			<xsl:variable name="height2" select="$pasVerticalNBL * following-sibling::facture[1]/nbLignes"/>
			<xsl:variable name="cx2" select="((position()) * $pasHorizontal)+7+(($pasHorizontal - $histogramSpacing) div 2)"/>
			<line x1="{$cx}" y1="{100 - $height}" x2="{$cx2}" y2="{100 - $height2}" stroke="black" stroke-width="1"/>
		</xsl:if>
		<circle r="2" cx="{$cx}" cy="{100 - $height}" fill="red"/>
	</xsl:template>
	<xsl:template match="facturesStat">
		<fo:table-row>
			<fo:table-cell>
				<fo:block>Nombre moyen d'unité(s) / article dans les factures</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block>
					<xsl:value-of select="avgNbUnitFacture"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell>
				<fo:block>prix moyen / article dans les factures</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block>
					<xsl:value-of select="ligneAvgFact"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell>
				<fo:block>nb de ligne complet</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block>
					<xsl:value-of select="nbLignesFact"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>
</xsl:stylesheet>