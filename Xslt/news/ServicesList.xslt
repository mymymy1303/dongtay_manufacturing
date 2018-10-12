<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<xsl:if test="count(/NewsList/News) > 0">
			<div class=" row canhcam-card-group">
				<!--Call News Child-->
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<a>
			<!--album target-->
			<xsl:attribute name="id">
				<xsl:text>service-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="class">
				<xsl:text>canhcam-card col-12 col-lg-6 col-xl-4</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div>
					<!--Attribute class-->
					<xsl:attribute name="class">
						<xsl:text>canhcam-card-img</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<!--image-->
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<xsl:attribute name="class">
						<xsl:text>canhcam-card-body</xsl:text>
					</xsl:attribute>
					<h2>
						<xsl:attribute name="class">
							<xsl:text>canhcam-card-title</xsl:text>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<p>
						<xsl:attribute name="class">
							<xsl:text>canhcam-card-text</xsl:text>
						</xsl:attribute>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
