<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:at="http://www.w3.org/2005/Atom">
    <xsl:output method="text"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/at:feed">
        <xsl:text>&#xa;&#xa;</xsl:text>
        <xsl:apply-templates/>
    </xsl:template>

    <!-- Only display the first 5 posts from the list -->
    <xsl:template match="at:entry[position() &lt; 6]">
        <xsl:value-of select="concat('  * [', at:link/@title, '](', at:link/@href, ')')"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="text()"/>

    <xsl:template match="/">
    <html>
    <a href="https://mishacreatrix.com/articles">➡ more articles...</a>
    </html>
    </xsl:template>

</xsl:stylesheet>