<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/biblioteca">
		<html>
			<head>
				<title>Biblioteca</title>
			</head>

			<body>
			
				<xsl:apply-templates/>
			
			</body>
		</html>
	</xsl:template>
	
	
	
	
	
	
	
	<xsl:template match="libro">
	
		Titulo: <xsl:value-of select="titulo"></xsl:value-of>
		<br/>
		
		Autor: <xsl:value-of select="autor"></xsl:value-of>
		<br/>
		
		Fecha de nacimiento: <xsl:value-of select="autor/@fechaNacimiento"></xsl:value-of>
		
		<br/>
		
		Fecha de publicacion: <xsl:value-of select="fechaPublicacion/@año"></xsl:value-of>
		<br/>
		<hr/>
	</xsl:template>
	
</xsl:stylesheet>