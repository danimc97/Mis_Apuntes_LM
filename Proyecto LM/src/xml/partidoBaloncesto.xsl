<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="/partidoBaloncesto">
		
		<html>
		
			<head>
			
				<style type="text/css">
                    body {
                    font-family: Arial;
                    font-size: 11px;
                    }
                    
                    table img {
                    	width: 40px;
                    }
                    
                    th {
                    	background: #1e3356;
                    	color: #FFFFFF;
                    }
                    
                    #tablaCancha {
                    	color: #eff4fc;
                    }
                    
                    ol, ul
                    {
                    margin-top: 10px;
                    margin-left: 0px;
                    }
                    
                    #menu li
                    {
                    margin-left: 0px;
                    display: inline;
                    list-style-type: none;
                    padding: 10px 50px;
                    }
                    
                    .noticia {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: left; 
                    width: 338px;
                    }
                    
                    .noticia img {
                    width: 338px;
                    }
                    
                    .noticiaDobleAncho {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: left; 
                    width: 690px;
                    }
                    
                    .noticiaDobleAncho img {
                    width: 690px;
                    }
                    
                    .fechaNoticia {
                    color: #A3A34B;
                    }
                    
                    .comentariosNoticia {
                    color: #A3A34B;
                    padding-left: 20px;
                    }
                    
                    .divPublicidad {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: right; 
                    width: 280px;                    }
                    }
                    
                    .divPublicidad img {
                    width: 200px;
                    }
   		</style>
				
			
			</head>
			
			<body>
			
				<div style="width: 1000px; margin: 0 auto;">
				
				
					<h1 align="center">Baloncesto: Baloncesto Lucena - Unicaja Baloncesto</h1>
					
					<table border="1" width="100%">
						
							<th>Equipo</th>
							<th>Jugador</th>
							<th>Dorsal</th>
							<th>Apodo</th>
							<th>Puntos</th>
							<th>Rebotes</th>
							<th>Asistencias</th>
						
				        
				        <xsl:apply-templates select="equipo"/>
				        
        			</table>
        			<p></p>
					<p></p>
        			
        			<table width="100%" height="300px" id="tablaCancha">
        				<xsl:attribute name="background"><xsl:value-of select="pista"></xsl:value-of></xsl:attribute>
				        <xsl:call-template name="bucleForFila">
				        	<xsl:with-param name="i">1</xsl:with-param>
				        </xsl:call-template>
			        </table>
			        <p></p>
					<p></p>
			        
			        <table align="center" border="1" width="50%">
			        <th>Tiempo</th>
			        <th>Jugador</th>
			        <th>Apodo</th>
			        <th>Descripcion</th>
			        <th>Icono</th>	
			        
			        <xsl:apply-templates select="historico"/>
			        	        
			        </table>
					
				</div>
				
			
			</body>
		
		</html>
		
	</xsl:template>
	
	<xsl:template match="historico">
		<xsl:for-each select="entrada">
			<tr>
					<td><xsl:value-of select="@tiempo"/></td>
					<td><xsl:value-of select="@jugador"/></td>
					<xsl:choose>
						<xsl:when test="@jugador='Jaime'">
							<td>Arquero</td>
						</xsl:when>
						<xsl:when test="@jugador='Ainhoa'">
							<td>Cara de niña</td>
						</xsl:when>
						<xsl:when test="@jugador='Antonio'">
							<td>Araña</td>
						</xsl:when>
						<xsl:when test="@jugador='Chicho'">
							<td>Capi</td>
						</xsl:when>
						<xsl:when test="@jugador='Mar'">
							<td>Muralla</td>
						</xsl:when>
						<xsl:when test="@jugador='Esther'">
							<td>Máquina</td>
						</xsl:when>
						<xsl:when test="@jugador='Juan'">
							<td>SuperJuan</td>
						</xsl:when>
					</xsl:choose>
					<td><xsl:value-of select="."/></td>
					<xsl:choose>
						<xsl:when test="@tipo='canasta'">
							<td>
								<img width="30px">
									<xsl:attribute name="src"><xsl:value-of select="../imagen[@tipo='canasta']"/></xsl:attribute>
								</img>
							</td>
						</xsl:when>
						<xsl:when test="@tipo='falta'">
							<td>
								<img width="30px">
									<xsl:attribute name="src"><xsl:value-of select="../imagen[@tipo='falta']"/></xsl:attribute>
								</img>
							</td>
						</xsl:when>
					</xsl:choose>
			</tr>
		</xsl:for-each>
	
	</xsl:template>
	
	<xsl:template match="equipo">
		<xsl:for-each select="jugador">
		<xsl:sort select="@nombre" order="ascending"/>
		<tr>
			<td>
			<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
			<img width="30px">
				<xsl:attribute name="src"><xsl:value-of select="../@imagen"/></xsl:attribute>
			</img>
			</td>
			<td>
				<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
				<xsl:value-of select="@nombre"></xsl:value-of>
			</td>
			<td>
				<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
				<xsl:value-of select="@dorsal"></xsl:value-of>
			</td>
			<td>
				<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
				<xsl:value-of select="@apodo"></xsl:value-of>
			</td>
			<td>
				<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
				<xsl:value-of select="@puntos"></xsl:value-of>
			</td>
			<td>
				<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
				<xsl:value-of select="@rebotes"></xsl:value-of>
			</td>
			<td>
				<xsl:choose>
				<xsl:when test="../@tipo='Local'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8e7ff</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
		        <xsl:when test="../@tipo='Visitante'">
					<xsl:choose>
		                <xsl:when test="position() mod 2 = 1">
		                	<xsl:attribute name="bgcolor">#d8ffcc</xsl:attribute>
		             	</xsl:when>
		           </xsl:choose>
		        </xsl:when>
	        </xsl:choose>
				<xsl:value-of select="@asistencias"></xsl:value-of>
			</td>
		</tr>
		</xsl:for-each>
	</xsl:template>
	
	
	
	
	
	<xsl:template name="bucleForFila">
  	<xsl:param name="i"/>
  	<xsl:if test="$i &lt;= 5">
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
  	<xsl:if test="$j &lt;= 10">
  		<xsl:call-template name="celda">
  			<xsl:with-param name="posicionX"><xsl:value-of select="$j"/></xsl:with-param>
  			<xsl:with-param name="posicionY"><xsl:value-of select="$i"/></xsl:with-param>
  		</xsl:call-template>
  		<xsl:call-template name="bucleForColumna">
  			<xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
  			<xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
  		</xsl:call-template>
  	</xsl:if>
  </xsl:template>>


  <xsl:template name="celda">
  	<xsl:param name="posicionX"/>
  	<xsl:param name="posicionY"/>
  	<td>
  	<img>
  		<xsl:for-each select="equipo/jugador">
  			<xsl:if test="@posicionX = $posicionX and @posicionY = $posicionY">
  				<xsl:choose>
  					<xsl:when test="../@tipo='Local'">
  						<xsl:attribute name="src"><xsl:value-of select="../@imagen"/></xsl:attribute>
  					</xsl:when>
  					<xsl:when test="../@tipo='Visitante'">
  						<xsl:attribute name="src"><xsl:value-of select="../@imagen"/></xsl:attribute>
  					</xsl:when>
  				</xsl:choose>
  				<xsl:value-of select="@nombre"/>
  			</xsl:if>
  		</xsl:for-each>
  	</img>
  	</td>
  </xsl:template>
	
</xsl:stylesheet>