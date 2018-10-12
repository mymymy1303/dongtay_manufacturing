<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="home-slider">
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="item">
			<div class="img-slider">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
				<div class="title-block px-3">
					<h3>
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
