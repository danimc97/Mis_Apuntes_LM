<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  	<xsl:template match="/ligaEndesa">
		<html>
			<head>
				<title>Liga Endesa</title>
			</head>
			<body>
				<p style="color:red;">Año de creación: <xsl:value-of select="fechaCreacion"/></p><br/>
				<p style="color:red;">Nombre completo: <xsl:value-of select="nombreCompleto"/></p><br/>
				<p style="color:red;">Equipos: <xsl:value-of select="equipos"/></p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>