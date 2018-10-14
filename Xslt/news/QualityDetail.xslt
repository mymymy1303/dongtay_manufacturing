<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="quality-ct-box">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-sm-6 col-lg-3">
							<div class="img-block d-flex justify-content-center align-items-center mb-3 mb-sm-0">
								<xsl:apply-templates select="NewsImages" mode="Second"></xsl:apply-templates>
								<!-- <img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="/NewsDetail/ImageUrl"></xsl:value-of>
								</xsl:attribute>
								</img> -->
							</div>
						</div>
						<div class="col-sm-6 col-lg-9">
							<div class="text-block">
								<p>
									<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
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
