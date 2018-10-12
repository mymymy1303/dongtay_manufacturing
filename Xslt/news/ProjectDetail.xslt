<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="project-ct-box">
			<article>
				<div class="container">
					<div class="row">
						<div class="col pl-0">
							<div class="title-block mb-4">
								<h2>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								</h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 pl-0">
							<div class="img-block mb-3">
								<a href="javascript:void(0)">
									<img class="img-fluid">
										<xsl:attribute name="src">
											<xsl:value-of select="/NewsDetail/ImageUrl"></xsl:value-of>
										</xsl:attribute>
									</img>
								</a>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="text-block-left">
								<p>
									<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col px-0">
							<div class="text-block-below">
								<p>
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>


</xsl:stylesheet>
