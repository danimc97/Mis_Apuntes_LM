<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="/primerDia1DAW">
		
		<html>
		
			<head>
			
			
			</head>
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
			
			<table border="1">
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">1</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">2</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">3</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">4</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">5</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">6</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">7</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">8</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">9</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">10</xsl:with-param>
                	</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	                    <xsl:with-param name="x">1</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">2</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">3</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">4</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">5</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">6</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">7</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
                	<xsl:call-template name="celda">
	                    <xsl:with-param name="x">8</xsl:with-param>
	                    <xsl:with-param name="y">11</xsl:with-param>
                	</xsl:call-template>
				</tr>
				
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
					<xsl:attribute name="bgcolor">green</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'SIST INF'">
					<xsl:attribute name="bgcolor">yellow</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'FOL'">
					<xsl:attribute name="bgcolor">gray</xsl:attribute>
				</xsl:when>
				<xsl:when test=". = 'BBDD'">
					<xsl:attribute name="bgcolor">brown</xsl:attribute>
				</xsl:when>
			</xsl:choose>
			<xsl:value-of select="."/>
		</td>
	</xsl:template>
	
	<xsl:template name="celda">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        <td>
            <xsl:for-each select="estructuraAula/bloque">
                <xsl:if test="($x = @x) and ($y = @y)">
                	<xsl:choose>
						<xsl:when test="@tipo = puerta">
							<xsl:attribute name="bgcolor">#ff543a</xsl:attribute>
						</xsl:when>
						<xsl:when test="@tipo = pared">
							<xsl:attribute name="bgcolor">#fccf53</xsl:attribute>
						</xsl:when>
						<xsl:when test="@tipo = ventana">
							<xsl:attribute name="bgcolor">#bfd7ff</xsl:attribute>
						</xsl:when>
					</xsl:choose>
                    <xsl:value-of select="@tipo"/>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>
	
</xsl:stylesheet>