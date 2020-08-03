<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : XSLT_Example.xsl
    Created on : January 8, 2020, 10:07 AM
    Author     : Thien Kim
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="Company">
        <html>
            <xsl:apply-templates/>
        </html>
    </xsl:template>
    <xsl:template match="Product">
        <P>
            <xsl:apply-templates/>
        </P>
    </xsl:template>

</xsl:stylesheet>
