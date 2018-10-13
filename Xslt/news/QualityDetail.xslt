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
								<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="/NewsDetail/ImageUrl"></xsl:value-of>
								</xsl:attribute>
								</img>
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


</xsl:stylesheet>
