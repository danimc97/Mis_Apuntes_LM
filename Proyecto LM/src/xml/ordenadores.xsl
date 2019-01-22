<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/ordenadores">
		<html>
			<head>
				<title>Ordenadores</title>
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
	
	
	
	
	
	<xsl:template match="ordenador">
	
		<h1>Ordenador</h1>
		
		Procesador: <xsl:value-of select="concat(procesador,' - ',procesador/@generacion)"></xsl:value-of>
		<br/>
		RAM: Tipo: <xsl:value-of select="RAM/tipo"></xsl:value-of>
		<br/>
		Capacidad: <xsl:value-of select="RAM/capacidad"></xsl:value-of>
		<br/>
		ROM: Tipo: <xsl:value-of select="ROM/tipo"></xsl:value-of>
		<br/>
		Capacidad: <xsl:value-of select="ROM/capacidad"></xsl:value-of>
		<br/>
		HDD: Tipo: <xsl:value-of select="HDD/tipo"></xsl:value-of>
		<br/>
		Capacidad: <xsl:value-of select="HDD/capacidad"></xsl:value-of>
		<br/>
		<xsl:for-each select="transporte/localidad">
			<xsl:value-of select="concat(.,' - ',@fechaSalida)"></xsl:value-of>
			<br/>
		</xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>