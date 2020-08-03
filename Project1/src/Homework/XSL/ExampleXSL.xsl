<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"  encoding="iso-8859-1"
 doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
 doctype-system="http://www.w3.org/TR/xhtmll/DTD/xhtmll-transitional.dtd"/>
 <xsl:template match="/">
     <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
             <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
             <title>Book</title>
         </head>
         <body>
             <xsl:for-each select="//books">
                 <!-- <table>
                     <xsl:for-each select="book">
                         <tr>
                             <td><font color='red'>Ten khoa hoc: <xsl:value-of select="title"/></font></td>
                         </tr>
                         <tr>
                             <td>Tac gia<xsl:value-of select="author"/></td>
                         </tr>
                         <tr>
                             <td>So trang<xsl:value-of select="pages"/></td>
                         </tr>
                         <tr>
                             <td>Trong luong<xsl:value-of select="weight"/></td>
                         </tr>
                         <tr>
                             <td>Chu y: Van chuyen co phi</td>
                         </tr>
                     </xsl:for-each>
                 </table> -->
                 <ul>
                     <xsl:for-each select="book">
                    <li>
                        <span style="color:red">Ten khoa hoc: <xsl:value-of select="title"/></span>
                    </li>
                    <li>
                        Tac gia: <xsl:value-of select="author"/>
                    </li>
                    <li>
                        So trang: <xsl:value-of select="pages"/>
                    </li>
                    <xsl:if test="weight > 300">
                        <li>Trong luong:
                            <xsl:value-of select="weight"/>
                            <xsl:value-of select="weight/@units"/> 
                        </li>
                    </xsl:if>
                    <li>
                        Chu y:
                        <xsl:choose>
                            <xsl:when test="weight > 500">Van chuyen co phi</xsl:when>
                            <!-- <xsl:when test="weight/@units = 'gram' "> Van chuyen theo gram <xsl:when> -->
                            <xsl:otherwise>Van chuyen mien phi</xsl:otherwise>
                        </xsl:choose>
                    </li>
                    </xsl:for-each>
                 </ul>
             <hr/>
             </xsl:for-each>
         </body>
     </html>    
 </xsl:template>
</xsl:stylesheet>