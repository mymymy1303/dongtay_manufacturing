<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<!--Begin News-->
	<xsl:template match="/">

		<xsl:if test="count(/NewsList/News) > 0">
			<div class="row">
				<div class="col">
					<h2 class="title-with-pattern">
						<xsl:value-of select="/NewsList/LatestProjects" />
					</h2>
				</div>
			</div>
			<div class=" row">
				<div class="col">
					<div class="row">
						<!--Call News Child-->
						<xsl:apply-templates select="/NewsList/News" mode="LatestNews"></xsl:apply-templates>
					</div>
				</div>
				<!--Call News Child-->
			</div>
			<div class="row">
				<div class="col">
					<h2 class="title-with-pattern mt-lg-4">
						<xsl:value-of select="/NewsList/CommonProjects" />
					</h2>
				</div>
			</div>
			<div class="row mt-4">
				<xsl:apply-templates select="/NewsList/News" mode="CommonNews"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News" mode="LatestNews">
		<xsl:if test="position()=1">
			<div>
				<xsl:attribute name="class">
					<xsl:text>col-12 col-lg-6 main-news mt-4</xsl:text>
				</xsl:attribute>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<xsl:attribute name="class">
							<xsl:text>news-block</xsl:text>
						</xsl:attribute>
						<div>
							<xsl:attribute name="class">
								<xsl:text>box-zoom</xsl:text>
							</xsl:attribute>
							<img>
							<xsl:attribute name="class">
								<xsl:text>news-img</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<xsl:attribute name="class">
								<xsl:text>news-content</xsl:text>
							</xsl:attribute>
							<h3>
								<xsl:attribute name="class">
									<xsl:text>news-title</xsl:text>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
							<p>
								<xsl:attribute name="class">
									<xsl:text>news-text</xsl:text>
								</xsl:attribute>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<span>
								<xsl:value-of select="/NewsList/ViewMore" />
							</span>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="1 &lt; position() and position() &lt; 5">
			<xsl:if test="position()=2">
				<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6 latest-news mt-lg-4"&gt;</xsl:text>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<xsl:attribute name="class">
						<xsl:text>news-block</xsl:text>
					</xsl:attribute>
					<div>
						<xsl:attribute name="class">
							<xsl:text>box-zoom</xsl:text>
						</xsl:attribute>
						<img>
						<xsl:attribute name="class">
							<xsl:text>news-img</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<xsl:attribute name="class">
							<xsl:text>news-content</xsl:text>
						</xsl:attribute>
						<h3>
							<xsl:attribute name="class">
								<xsl:text>news-title</xsl:text>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p>
							<xsl:attribute name="class">
								<xsl:text>news-text</xsl:text>
							</xsl:attribute>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<span>
							<xsl:value-of select="/NewsList/ViewMore" />
						</span>
					</figcaption>
				</figure>
			</a>
			<xsl:if test="position()=4">
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:if>
		</xsl:if>


		<!--item-->
	</xsl:template>

	<xsl:template match="News" mode="CommonNews">
		<xsl:if test="4 &lt; position()">
			<div>
				<xsl:attribute name="class">
					<xsl:text>col-12 col-md-6 col-lg-4 col-xl-3 common-news</xsl:text>
				</xsl:attribute>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<xsl:attribute name="class">
							<xsl:text>news-block</xsl:text>
						</xsl:attribute>
						<div>
							<xsl:attribute name="class">
								<xsl:text>box-zoom</xsl:text>
							</xsl:attribute>
							<img>
							<xsl:attribute name="class">
								<xsl:text>news-img</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<xsl:attribute name="class">
								<xsl:text>news-content</xsl:text>
							</xsl:attribute>
							<h3>
								<xsl:attribute name="class">
									<xsl:text>news-title</xsl:text>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
							<p>
								<xsl:attribute name="class">
									<xsl:text>news-text</xsl:text>
								</xsl:attribute>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<span>
								<xsl:value-of select="/NewsList/ViewMore" />
							</span>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
