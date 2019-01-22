<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/gormitis">
		
		<html>
		
			<head>
				<title>Gormiti</title>
			</head>
			
			<body>
			
				<table border="1">
					<tr>
						<th></th>
						<th>Gormiti</th>
						<th>Tribu</th>
					</tr>
						<xsl:for-each select="gormiti">
							<xsl:call-template name="TablaGormitis">
								<xsl:with-param name="jugador"><xsl:value-of select="@jugador"/></xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
				</table>
			</body>
		
		</html>
		
	</xsl:template>
	
	
	<xsl:template name="TablaGormitis">
	  	<xsl:param name="jugador"/>
	  	<tr>
	  		<td><xsl:value-of select="position()"/></td>
	  		<td><img src="{http://webdidacticarafaelmunoz.appspot.com/lmsgi/ejercicios-cap5/examen/2014-enero/gormitis/volcan.png[@gormiti=$gormiti]}"/></td>
	  		<td><xsl:value-of select="@tribu"/></td>
	  	</tr>
  </xsl:template>
	
	
</xsl:stylesheet>