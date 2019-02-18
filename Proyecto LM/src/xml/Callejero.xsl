<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="/callejero">
	<html>
		<head></head>
		<body>
			<p>Poblacion: <xsl:value-of select="@ciudad"></xsl:value-of></p>
			<p>Barrio: <xsl:value-of select="@barrio"></xsl:value-of></p>
			<p>Provincia: <xsl:value-of select="@provincia"></xsl:value-of></p>
			<p>CP: <xsl:value-of select="@cod_postal"></xsl:value-of></p>
			<table border="1" height="500px" width="635px" style="background: url('http://www.webdidacticarafaelmunoz.appspot.com/lmsgi/image/callejero/callejero.png') no-repeat;">
		        <xsl:call-template name="bucleForFila">
		        	<xsl:with-param name="i">1</xsl:with-param>
		        </xsl:call-template>
        	</table>
        	
        		<xsl:apply-templates select="patrocinadores/patrocinador"/>
        	
        	
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="patrocinadores/patrocinador">
			<ul>
         	<li><xsl:value-of select="nombre"/></li>
         	<li><xsl:value-of select="direccion"/></li>
         	<li><img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img></li>
         	</ul>
	</xsl:template>
	
	<xsl:template name="bucleForFila">
  	<xsl:param name="i"/>
  	<xsl:if test="$i &lt;= 6">
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
  	<xsl:if test="$j &lt;= 6">
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
  		<img width="60px">
	  		<xsl:for-each select="monumentos/monumento">
	  			<xsl:if test="@x = $x and @y = $y">
	  				<xsl:attribute name="src"><xsl:value-of select="@imagen"/></xsl:attribute>
	  				<xsl:value-of select="."/>
	  			</xsl:if>
	  		</xsl:for-each>
  		</img>
  	</td>
  </xsl:template>
	
</xsl:stylesheet>