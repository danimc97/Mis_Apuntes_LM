<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/navidad">
  	<html>
  		<head>
  			<title>Navidad</title>
  		</head>
  		
  		<body>
  			<h1>Almuerzo:</h1>
  			<ul>
  				<li><xsl:value-of select="almuerzo/primerPlato"/></li>
  				<li><xsl:value-of select="almuerzo/segundoPlato"/></li>
  				<li><xsl:value-of select="almuerzo/postre"/></li>
  				<li><xsl:value-of select="almuerzo/bebida"/></li>
  			</ul>
  			<h1>Sobremesa:</h1>
  			<ul>
  				<li><xsl:value-of select="almuerzo/sobremesa/primeraCopa"/></li>
  				<li><xsl:value-of select="almuerzo/sobremesa/segundaCopa"/></li>
  				<li><xsl:value-of select="almuerzo/sobremesa/terceraCopa"/></li>
  			</ul>
  		</body>
  	</html>
  </xsl:template>
</xsl:stylesheet>