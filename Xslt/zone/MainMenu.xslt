<?xml version="1.0" encoding="utf-8"?>
<<<<<<< HEAD
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="list-inline mb-0 d-flex d-lg-inline-block flex-column">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item list-inline-item mr-0">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item list-inline-item mr-0 active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-link p-0">

				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>

		</li>
	</xsl:template>

</xsl:stylesheet>