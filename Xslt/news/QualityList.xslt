<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--Begin News-->
	<xsl:template match="/">
		<xsl:if test="count(/NewsList/News) > 0">
			<div class="certificates-text mt-3 mt-md-0">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<p>
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</p>
		<a class="certificates-img d-flex justify-content-center align-items-center flex-column flex-sm-row">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:apply-templates select="NewsImages" mode="Second"></xsl:apply-templates>
		</a>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Second">
		<div class="img-block p-4">
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>
