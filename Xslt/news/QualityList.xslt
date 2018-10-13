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
			<div class="certificates-img d-flex justify-content-center align-items-center flex-column flex-sm-row">
				<div class="img-block-left d-flex justify-content-center align-items-center">
					<xsl:apply-templates select="/NewsList/News" mode="First"></xsl:apply-templates>
				</div>
				<div class="img-block p-4">
					<xsl:apply-templates select="/NewsList/News" mode="Second"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<p>
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</p>
	</xsl:template>

	<xsl:template match="News" mode="First">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
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
		</a>
	</xsl:template>

	<xsl:template match="News" mode="Second">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
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
		</a>
	</xsl:template>
</xsl:stylesheet>
