<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2 class="title-with-pattern mb-3">
			<!--data-comment-->
			<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
		</h2>
		<div class="quality-slider">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<div class="img-block d-flex justify-content-center align-items-center">
				<!-- <img class="img-fluid">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img> -->
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3924.2681327190658!2d107.10974721458618!3d10.400265768868378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317571e900d4c18d%3A0xd3692354358146ac!2sDong+Xuyen+Industrial+Park!5e0!3m2!1sen!2s!4v1539370436888" class="img-fluid" frameborder="0" style="border:0;"></iframe>
			</div>
		</a>

	</xsl:template>
</xsl:stylesheet>
