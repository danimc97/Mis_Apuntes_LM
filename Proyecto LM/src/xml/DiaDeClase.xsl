<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="/primerDia1DAW">
		<html>
			<head></head>
			<body>
				<table border="1">
					<xsl:for-each select="horario/dia">
					<tr>
						<td><xsl:value-of select="@desc"/></td>
							<xsl:apply-templates select="hora">
							<xsl:sort select="@orden"/>
							</xsl:apply-templates>
					</tr>
				</xsl:for-each>
				</table>
				
				
				
				
				<table border="1" width="100px" height="100px">
	        <xsl:call-template name="bucleForFila">
	        	<xsl:with-param name="i">1</xsl:with-param>
	        </xsl:call-template>
        </table>
				
				
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="hora">
		<td>
		<xsl:choose>
				<xsl:when test=". = 'ENT DES'">
					<xsl:attribute name="bgcolor">red</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'PROG'">
					<xsl:attribute name="bgcolor">blue</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'LMSGI'">
					<xsl:attribute name="bgcolor">yellow</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'SIST INF'">
					<xsl:attribute name="bgcolor">brown</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'FOL'">
					<xsl:attribute name="bgcolor">blue</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'BBDD'">
					<xsl:attribute name="bgcolor">gray</xsl:attribute>
				</xsl:when>
		</xsl:choose>
		<xsl:value-of select="."></xsl:value-of>
		</td>
	</xsl:template>
	
	<xsl:template name="bucleForFila">
  	<xsl:param name="i"/>
  	<xsl:if test="$i &lt;= 11">
  		<tr>
	  		<xsl:call-template name="bucleForColumna">
	  			<xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
	  			<xsl:with-param name="j">1</xsl:with-param>
	  		</xsl:call-template>
	  		<xsl:call-template name="bucleForFila">
	  			<xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
	  		</xsl:call-template>
  		</tr>
  	</xsl:if>
  </xsl:template>


  <xsl:template name="bucleForColumna">
  	<xsl:param name="i"/>
  	<xsl:param name="j"/> 
  	<xsl:if test="$j &lt;= 8">
  		<xsl:call-template name="celda">
  			<xsl:with-param name="x"><xsl:value-of select="$j"/></xsl:with-param>
  			<xsl:with-param name="y"><xsl:value-of select="$i"/></xsl:with-param>
  		</xsl:call-template>
  		<xsl:call-template name="bucleForColumna">
  			<xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
  			<xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
  		</xsl:call-template>
  	</xsl:if>
  </xsl:template>


  <xsl:template name="celda">
  	<xsl:param name="x"/>
  	<xsl:param name="y"/>
  	<td>
  		<xsl:for-each select="estructuraAula/bloque">
  			<xsl:if test="@x = $x and @y = $y">
  				<xsl:choose>
					<xsl:when test="@tipo = 'puerta'">
						<xsl:attribute name="bgcolor">#ff543a</xsl:attribute>
					</xsl:when>
					<xsl:when test="@tipo = 'pared'">
						<xsl:attribute name="bgcolor">#fccf53</xsl:attribute>
					</xsl:when>
					<xsl:when test="@tipo = 'ventana'">
						<xsl:attribute name="bgcolor">#bfd7ff</xsl:attribute>
					</xsl:when>
				</xsl:choose>
  				<xsl:value-of select="@tipo"/>
  			</xsl:if>
  		</xsl:for-each>
  		
  		<xsl:for-each select="alumnado/alumno">
  			<xsl:if test="@x = $x and @y = $y">
  				<xsl:choose>
					<xsl:when test="@sexo = 'H'">
						<xsl:attribute name="bgcolor">blue</xsl:attribute>
						<img width="30px">
							<xsl:attribute name="src">http://webdidacticarafaelmunoz.appspot.com/lmsgi/ejercicios-cap5/examen/2018-enero/recursos/miiHombre.png</xsl:attribute>
						</img>
					</xsl:when>
					<xsl:when test="@sexo = 'M'">
						<xsl:attribute name="bgcolor">pink</xsl:attribute>
						<img width="30px">
							<xsl:attribute name="src">http://webdidacticarafaelmunoz.appspot.com/lmsgi/ejercicios-cap5/examen/2018-enero/recursos/miiMujer.png</xsl:attribute>
						</img>
					</xsl:when>
				</xsl:choose>
  				<xsl:value-of select="."/>
  			</xsl:if>
  		</xsl:for-each>
  	</td>
  </xsl:template>
  
</xsl:stylesheet>