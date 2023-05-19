<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
			<link rel="stylesheet" type="text/css" href="portafoli.css"/>
				<title>Projectes</title>
			<meta name="viewport" content="width=device-width,initial-scale=1" />
			</head>
			<body>
				<header>
					<h1>El Meu Portafoli</h1>
						<nav>
							<ul>
							<xsl:value-of select="//cicle " />
								<li> <a href="#projects"></a></li>
							</ul>
							<img src="{//img/@src}" alt="Descripción de la imagen"/>
						</nav>
				</header>
				<main>
					<section>
						<b><xsl:value-of select="//UF1/nomUF" /></b>
						<ul>
						<xsl:value-of select="//UF1/hores" /> Hores
						<xsl:for-each select = "//UF1/projecte">
						<ul>Cas 1: <xsl:value-of select="cas1"/></ul>
						<ul>Projecte: </ul> 
						<img id="foto1" src="{projecte1/img/@src}" alt="{projecte1/img/@alt}"/>
            			<ul>Cas 2: <xsl:value-of select="cas2"/></ul>
						<ul>Projecte: </ul>
  						<xsl:for-each select="projecte2/img">
    					<img id="foto2" src="{@src}" alt="{@alt}"/>
  						</xsl:for-each>
          			    </xsl:for-each>
						</ul>
					</section>	
					<section>
						<b><xsl:value-of select="//UF2/nomUF" /></b>
						<ul>
						<xsl:value-of select="//UF2/hores" /> Hores
						<xsl:for-each select = "//UF2/projecte">
						<ul>Cas 1: <xsl:value-of select="cas1"/></ul>
						<ul>Projecte: </ul> 
						<img id="foto3" src="{projecte1/img/@src}" alt="{projecte1/img/@alt}"/>
            			<ul>Cas 2: <xsl:value-of select="cas2"/></ul> 
						<ul>Projecte: </ul>
						<div class="images">
							<xsl:for-each select="projecte2/img">
								<img class="foto4" src="{@src}" alt="{@alt}"/>
							</xsl:for-each>
						</div>

						</xsl:for-each>
						</ul>
					</section>
					<section>
						<b><xsl:value-of select="//UF3/nomUF" /></b>
						<ul>
						<xsl:value-of select="//UF3/hores" /> Hores
						<xsl:for-each select = "//UF3/projecte">
						<ul>Cas 1: <xsl:value-of select="cas1"/></ul>
						<ul>Projecte: </ul> 
						<img id="foto5" src="{projecte1/img/@src}" alt="{projecte1/img/@alt}"/>
          			    </xsl:for-each>
						</ul>
					</section>
				</main>
				<footer>
					<p>Agustí Arasa © 2023 El Meu Portafoli</p>
				</footer>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>
