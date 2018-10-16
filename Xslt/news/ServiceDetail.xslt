<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-tabs-service-ct">
			<div class="toggle"><span></span>
			</div>
			<ul class="tabs-nav">
				<xsl:apply-templates select="/NewsDetail/NewsOther" mode="Mobile"> </xsl:apply-templates>
			</ul>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-xl-3">
						<ul class="tabs-header">
							<xsl:apply-templates select="/NewsDetail/NewsOther" mode="PC"> </xsl:apply-templates>
						</ul>
					</div>
					<div class="col-lg-8 col-xl-9">
						<img class="img-fluid mb-3">
						<xsl:attribute name="src">
							<xsl:value-of select="/NewsDetail/NewsImages/ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
						<h2 class="services-detail-title">
							<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther" mode="Mobile">
		<li class="tabs-nav-item">
			<a class="tabs-nav-link" href="#tab-1" tab-id="1">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<!-- <xsl:attribute name="tab-id">
					<xsl:value-of select="position()">
					</xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute> -->
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="NewsOther" mode="PC">
		<li class="nav-item">
			<!-- <xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>nav-item nav-active</xsl:text>
				</xsl:attribute>
			</xsl:if> -->
			<a class="tabs-nav-link">

				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<!-- <xsl:attribute name="tab-id">
					<xsl:value-of select="position()">

					</xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute> -->
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
