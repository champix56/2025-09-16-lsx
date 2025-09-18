<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#160;"> 
	<!ENTITY euro "&#x20ac;"> 
	<!ENTITY siret "215415205465102010"> 
]>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:template match="/">
		<xsl:result-document href="style/style.css" method="text" encoding="utf-8">
			.facture{
				break-before:always;
				height:287cm;
				width:20cm;
			}
			.destinataire{}
			.expediteur{}
			.numfacture{}
			table{}
			thead{}
			td.bold{}
			.footer{}
		</xsl:result-document>
		<xsl:result-document href="index.html" method="html" encoding="utf-8">
			<html>
				<head>
					<title/>
					<link rel="stylesheet" href="style/style.css" type="text/css"/>
				</head>
				<body>
					<div id="TOC">
						<h1>Liste des factures édités le <xsl:value-of select="/factures/@dateeditionXML"/></h1>
						<ul>
							<xsl:apply-templates select="//facture" mode="sommaire"/>
						</ul>
						<hr/>
					</div>
					<xsl:apply-templates select="//facture"/>
				</body>
			</html>
		</xsl:result-document>
	</xsl:template>
	<xsl:template match="facture" mode="sommaire">
		<li><a href="#F{@numfacture}">Facture N°<xsl:value-of select="@numfacture"/></a></li>
	</xsl:template>
	<xsl:template match="facture">
		<div class="facture" id="F{@numfacture}">
			<div class="expediteur">expediteur</div>
			<div class="destinataire">destinataire</div>
			<div class="numerofacture">numero facture</div>
			<table border="1" cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<th>ref</th>
						<th>designation</th>
						<th>quant</th>
						<th>€/unit</th>
						<th>Sous-Total</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>cell1</td>
					</tr>
					<tr>
						<th colspan="3">&nbsp;</th>
						<td class="bold">Montant total HT</td>
						<td class="bold">00.00€</td>
					</tr>
					<tr>
						<th colspan="3">&#160;</th>
						<td class="bold">Montant TVA</td>
						<td class="bold">00.00€</td>
					</tr>
					<tr>
						<th colspan="3">&#160;</th>
						<td class="bold">Montant Total TTC</td>
						<td class="bold">00.00€</td>
					</tr>
				</tbody>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>