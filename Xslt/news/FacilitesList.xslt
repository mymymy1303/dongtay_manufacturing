<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="facilities-slider">
			<article>
				<div class="container">
					<div class="row pl-sm-3">
						<div class="col-sm-3 d-flex justify-content-center px-sm-0">
							<div class="slider-nav d-flex align-items-center mb-0 w-100">
								<xsl:apply-templates select="/NewsList/News" mode="One"></xsl:apply-templates>
							</div>
						</div>
						<div class="col-sm-9">
							<div class="slider-fac d-flex align-items-center">
								<xsl:apply-templates select="/NewsList/News" mode="Two"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News" mode="One">
		<xsl:apply-templates select="NewsImages" mode="Thumb"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News" mode="Two">
		<div class="item">
			<div class="img-block">
				<xsl:apply-templates select="NewsImages" mode="Images"></xsl:apply-templates>
				<div class="title-block py-3 px-4">
					<h3 class="mb-0">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="NewsImages" mode="Thumb">
		<div class="item">
			<div class="img-block mb-2 mb-lg-3 mx-2 mx-sm-0 mt-3 mt-sm-0">
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
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Images">
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
	</xsl:template>
</xsl:stylesheet>
