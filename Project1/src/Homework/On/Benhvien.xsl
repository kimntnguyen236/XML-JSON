<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Benhvien.xsl
    Created on : January 10, 2020, 10:32 AM
    Author     : Thiên Kim
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="benhvien">
        <html>
            <head>
                <title>B3.StyleSheet.xsl</title>
            </head>
            <body>
                <xsl:for-each select="khoa">
                    <div style="width:100%; float:left">
                        <h2>
                            <center>DANH SACH BENH NHAN</center>
                        </h2>
                    </div>
                    <div style="width:100%; float: left">
                        <br/>
                        Ten khoa: <xsl:value-of select="tenkhoa"/>
                        <br/>
                        Truong khoa: <xsl:value-of select="@truongkhoa"/>
                    </div>
                    
                    <table border="1" style="width: 100%; float: left">
                        <tr>
                            <td>
                                <b>Ma So</b>
                            </td>
                            <td>
                                <b>Ho Ten</b>
                            </td>
                            <td>
                                <b>Gioi Tinh</b>
                            </td>
                            <td>
                                <b>So ngay nam vien</b>
                            </td>
                            <td>
                                <b>So tien dieu tri</b>
                            </td>
                        </tr>
                        <xsl:for-each select="benhnhan">
                            <!-- <xsl:if test="gioitinh='Nam' and songaynamvien &gt; = 10"> -->
                            <tr>
                                <td>
                                    <xsl:value-of select="@maso"/>
                                </td>
                                <td>
                                    <xsl:value-of select="hoten"/>
                                </td>
                                <td>
                                    <xsl:value-of select="gioitinh"/>
                                </td>
                                <td>
                                    <xsl:value-of select="songaynamvien"/>
                                </td>
                                <td>
                                    <xsl:value-of select="songaynamvien * 60000"/>
                                </td>
                            </tr>
                            <!-- </xsl:if> --> 
                        </xsl:for-each>
                    </table>
                    
                    <div style="width:30%; float:right">
                        Tong chi phi: <xsl:value-of select="sum(benhnhan/songaynamvien) * 60000"/>
                        <br/>
                    </div>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
