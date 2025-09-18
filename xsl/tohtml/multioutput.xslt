<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#160;"> 
	<!ENTITY euro "&#x20ac;"> 
	<!ENTITY siret "215415205465102010"> 
]>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:import href="all-libs.xslt"/>
	<xsl:variable name="docClient" select="fn:document('clients.xml')/clients"/>
	<xsl:template match="/">
		<xsl:result-document href="style/style.css" method="text" encoding="utf-8">
			.facture{
				break-before:always;
				height:287cm;
				width:20cm;
			}
			.expediteur{
				height:4.5cm
			}
			.destinataire{
				height:4.5cm;
				margin-left:12cm;
			}
			.numerofacture{
				margin-top:1.5cm;
				margin-bottom:1cm;
				text-align:center;
				border:1px solid black;
				background-color:lightgrey;
				margin-left:10%;
				margin-right:10%;
			}
			table{
				width:90%;
				margin-left:5%;
				margin-right:5%
			}
			thead{
				background-color:#ACACAC;
			}
			td.bold{ font-weight:900;}
			.footer{}
		</xsl:result-document>
		<xsl:result-document href="index.html" method="html" encoding="utf-8">
			<html>
				<head>
					<title/>
					<link rel="stylesheet" href="style/style.css" type="text/css"/>
				</head>
				<body>
					<!--<div><xsl:apply-templates select="/factures"/></div>-->
					<div id="TOC">
						<h1>Liste des factures édités le <xsl:value-of select="/factures/@dateeditionXML"/></h1>
						<ul>
							<xsl:apply-templates select="//facture" mode="sommaire"/>
						</ul>
						<hr/>
						<div><h2>Stats</h2>
							<table>
								<tbody>
								<tr>
									<th colspan="5">Devis</th>
								</tr>
									<xsl:call-template name="totaux">
										<xsl:with-param name="factureNode" select="//facture[fn:contains(@type,'evis')]"/>
									</xsl:call-template>
									<tr>
									<th colspan="5">facture</th>
								</tr>
									<xsl:call-template name="totaux">
										<xsl:with-param name="factureNode" select="//facture[fn:contains(@type,'acture')]"/>
									</xsl:call-template>
								</tbody>
							</table>
						</div>
					</div>
					<hr/>
					<hr/>
					<xsl:apply-templates select="//facture"/>
				</body>
			</html>
		</xsl:result-document>
	</xsl:template>
	<xsl:template match="clients/client">
		<xsl:value-of select="destinataire"/>
		<br/>
		<xsl:value-of select="adr1"/>
		<br/>
		<xsl:if test="string-length(adr2)">
			<xsl:value-of select="adr2"/>
			<br/>
		</xsl:if>
		<xsl:value-of select="cp"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="ville"/>
	</xsl:template>
	<xsl:template name="bloc-destinataire">
		<xsl:param name="node" select="."/>
		<div class="destinataire">
			<!--id client:<xsl:value-of select="$node/@idclient" /><br/>-->
			<!--
				usage a la volée
			<xsl:variable name="docClient" select="fn:document('clients.xml')/clients/client[@id=$node/@idclient]"/>
			<xsl:value-of select="$docClient/destinataire"/>
			-->
			<xsl:apply-templates select="$docClient/client[@id=$node/@idclient]"/>
		</div>
	</xsl:template>
	<!--	<xsl:template match="factures">
		<xsl:call-template name="bloc-destinataire">
			<xsl:with-param name="node" select="//facture[1]"/>
		</xsl:call-template>
	</xsl:template>-->
	<xsl:template match="facture">
		<div class="facture" id="F{@numfacture}">
			<xsl:call-template name="bloc-expediteur"/>
			<xsl:call-template name="bloc-destinataire"/>
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
					<xsl:apply-templates select=".//ligne"/>
					<xsl:call-template name="totaux"/>
				</tbody>
			</table>
		</div>
	</xsl:template>
	<xsl:template name="bloc-expediteur">
		<div class="expediteur">
			<xsl:value-of select="/factures/@rsets"/>
			<br/>
			<xsl:value-of select="/factures/@adr1ets"/>
			<br/>
			<xsl:if test="fn:string-length(/factures/@adr2ets) &gt;= 1">
				<xsl:value-of select="/factures/@adr2ets"/>
				<br/>
			</xsl:if>
			<xsl:value-of select="/factures/@cpets"/>
			<xsl:text> </xsl:text>
			<xsl:value-of select="/factures/@villeets"/>
		</div>
	</xsl:template>
	<xsl:template match="ligne">
		<tr>
			<!--
selection generique de tous les enfants
-->
			<xsl:apply-templates select="*"/>
			<!--
			selection arbitraire des noeuds
<xsl:apply-templates select="ref"/>
			<xsl:apply-templates select="designation"/>
			<xsl:apply-templates select="nbUnit"/>
			<xsl:apply-templates select="phtByUnit"/>
			<xsl:apply-templates select="stotligne"/>	-->
		</tr>
	</xsl:template>
	<xsl:template match="phtByUnit|stotligne" priority="1.5">
		<td>
			<xsl:value-of select="fn:format-number(.,'0,00€', 'currency')"/>
		</td>
	</xsl:template>
	<xsl:template match="surface" priority="2"/>
	<xsl:template match="ligne/*">
		<td>
			<xsl:value-of select="."/>
		</td>
	</xsl:template>
	<xsl:decimal-format decimal-separator="," grouping-separator=" " name="currency"/>
	<xsl:template name="totaux">
		<xsl:param name="factureNode" select="."/>
		<xsl:variable name="ht" select="xs:float(fn:format-number(fn:sum($factureNode//stotligne),'0.00'))"/>
		<xsl:variable name="tva" select="xs:float(fn:format-number($ht*0.25,'0.00'))" />
		<tr>
			<th colspan="3">&nbsp;</th>
			<td class="bold">Montant total HT</td>
			<td class="bold">
				<xsl:value-of select="fn:format-number($ht,'0,00€','currency')"/>
			</td>
		</tr>
		<tr>
			<th colspan="3">&#160;</th>
			<td class="bold">Montant TVA</td>
			<td class="bold"><xsl:value-of select="fn:format-number($tva,'0,00€', 'currency')"/></td>
		</tr>
		<tr>
			<th colspan="3">&#160;</th>
			<td class="bold">Montant Total TTC</td>
			<td class="bold"><xsl:value-of select="fn:format-number($ht+$tva,'0,00€', 'currency')"/></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>