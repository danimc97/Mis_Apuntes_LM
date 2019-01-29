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
			
				<table style="text-align:center;">
					<tr style="background:#779cd8;">
						<th></th>
						<th>Gormiti</th>
						<th>Tribu</th>
					</tr>
					<xsl:for-each select="gormiti">
						<xsl:choose>
							<xsl:when test="position() mod 2 = 1">
								<xsl:call-template name="filaEnTablasJugadasDescritas">
									<xsl:with-param name="color">#7ba8f2</xsl:with-param>
								</xsl:call-template>
							</xsl:when>
							<xsl:otherwise>
								<xsl:call-template name="filaEnTablasJugadasDescritas">
									<xsl:with-param name="color">#ffffff</xsl:with-param>
								</xsl:call-template>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</table>
				
				<table border="1" width="800px" height="400px" style="background: url('http://webdidacticarafaelmunoz.appspot.com/lmsgi/ejercicios-cap5/examen/2014-enero/gormitis/islagorm.jpg') no-repeat;background-size:100% 100%;">
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>				
			</body>
		</html>
	</xsl:template>
	
	
	<xsl:template name="filaEnTablasJugadasDescritas">
		<xsl:param name="color"/>
		<tr>
			<xsl:attribute name="bgcolor"><xsl:value-of select="$color"/></xsl:attribute>
			<td><xsl:value-of select="position()"></xsl:value-of></td>			
			<td><img src="{.}"/></td>
			<td><xsl:value-of select="@tribu"></xsl:value-of></td>
		</tr>
	</xsl:template>	
</xsl:stylesheet>