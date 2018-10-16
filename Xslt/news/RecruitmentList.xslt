<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="recruitment">
			<article>
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="accordion" id="accordionRecruitment">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="card border-bottom">
			<div class="card-header mb-0" id="headingOne">
				<xsl:attribute name="id">
					<xsl:text>heading-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<h3 class="mb-0">
					<button class="btn pt-0" type="button" data-toggle="collapse" data-target="#recruitmentOne" aria-expanded="true"
					 aria-controls="recruitmentOne">
						<xsl:attribute name="id">
							<xsl:text>#recruitment-</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-target">
							<xsl:text>#recruitment-</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="aria-controls">
							<xsl:text>#recruitment-</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>
						<p class="mb-0">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</button>
				</h3>
			</div>
			<div class="collapse" id="recruitmentOne" aria-labelledby="headingOne" data-parent="#accordionRecruitment">
				<xsl:attribute name="aria-labelledby">
					<xsl:text>heading-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:text>recruitment-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="position() =1">
					<xsl:attribute name="class">
						<xsl:text>collapse show</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<div class="card-body pt-0">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

					<div class="crew-card">
						<div class="crew-card-link mb-2">
							<a class="d-flex align-items-center" href="#" download="">
								<xsl:attribute name="href">
									<xsl:value-of select="FileUrl"></xsl:value-of>
								</xsl:attribute>
								<i class="mr-2 fa fa-download"></i>
								<p class="text-uppercase mb-0">
									<xsl:value-of select="/NewsList/Download" />
								</p>
							</a>
						</div>
						<div class="crew-card-email">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<a class="btn crew-card-button" href="#">
							Apply for this job
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
