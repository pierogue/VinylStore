<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/ 1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="body/record">
			<html>
			<body>
			<div>
				<div>
					<xsl:attribute name="class">
						<xsl:text>albumInfo</xsl:text>
					</xsl:attribute>
					<img>
						<xsl:attribute name="href">
							<xsl:value-of select="cover"/>
						</xsl:attribute>
						<xsl:attribute name="class">
							<xsl:text>albumCover</xsl:text>
						</xsl:attribute>
					</img>
					<span>
						<xsl:attribute name="class">
							<xsl:text>albumName</xsl:text>
						</xsl:attribute>
						<xsl:value-of select="album"/>
						<xsl:text> - </xsl:text>
						<xsl:value-of select="author"/>
					</span>
					<span>
						<xsl:attribute name="class">
							<xsl:text>year</xsl:text>
						</xsl:attribute>
						<xsl:value-of select="year"/>
					</span>
				</div>
				<div>
					<xsl:attribute name="class">
						<xsl:text>trackInfo</xsl:text>
					</xsl:attribute>
					<ul>
						<xsl:for-each select="tracklist">
							<li>
								<xsl:value-of select="song"/>
							</li>
						</xsl:for-each>
					</ul>
					<span>
						<xsl:attribute name="class">
							<xsl:text>genre</xsl:text>
						</xsl:attribute>
						<xsl:text>Жанр: </xsl:text>
						<xsl:value-of select="genre"/>
					</span>
				</div>
			</div>
			</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:transform> 
</xsl:stylesheet>