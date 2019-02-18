<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="/Callejero">
	
		<p>Poblacion: <xsl:value-of select="@ciudad"></xsl:value-of></p>
		<p>Barrio: <xsl:value-of select="@barrio"></xsl:value-of></p>
		<p>Provincia: <xsl:value-of select="@provincia"></xsl:value-of></p>
		<p>CP: <xsl:value-of select="@cod_postal"></xsl:value-of></p>
		<img>
			<xsl:attribute name="src"><xsl:value-of select="@provincia"></xsl:value-of></xsl:attribute>
		</img>
		
		<table>
			<xsl:apply-templates/>
		</table>
	
	</xsl:template>
	
	<xsl:template match="calle" >
	<tr>
		<td>
			<xsl:value-of select="."></xsl:value-of>
		</td>
	</tr>
	</xsl:template>
	
</xsl:stylesheet>