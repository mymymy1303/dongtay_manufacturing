<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-tabs-service-ct">
			<div class="toggle"><span></span>
			</div>
			<ul class="tabs-nav" role="tablist">
				<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="TabsNavMobile"> </xsl:apply-templates>
			</ul>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-xl-3">
						<ul class="tabs-header" role="tablist">
							<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="TabsNavPC"> </xsl:apply-templates>
						</ul>
					</div>
					<div class="col-lg-8 col-xl-9">
						<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="TabContent"> </xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="TabsNavMobile">
		<li class="tabs-nav-item">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>tabs-nav-item tabs-nav-item-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="tabs-nav-link" href="#tab-1" tab-id="1">

				<xsl:attribute name="tab-id">
					<xsl:value-of select="position()">

					</xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="NewsAttributes" mode="TabsNavPC">
		<li class="nav-item">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>nav-item nav-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="tabs-nav-link" href="#tab-1" tab-id="1">

				<xsl:attribute name="tab-id">
					<xsl:value-of select="position()">

					</xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
