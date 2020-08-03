<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"  encoding="iso-8859-1"
 doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
 doctype-system="http://www.w3.org/TR/xhtmll/DTD/xhtmll-transitional.dtd"/>
 <xsl:template match="/">
     <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
             <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
             <title>Product List</title>
         </head>
         <body>
             <h2>Product List</h2>
             <xsl:for-each select="//cat">
                 <h3><font color='blue'><xsl:value-of select="@cat-name"/></font></h3>
                 <table border='1'>
                     <tr>
                         <td align="center"><b>Product</b></td>
                         <td align="center"><b>Price: $US</b></td>
                     </tr>
                     <xsl:for-each select="product">
                         <tr>
                             <td><xsl:value-of select="name"/></td>
                             <td align="right"><xsl:value-of select="price"/></td>
                         </tr>
                     </xsl:for-each>
                 </table>
             <hr/>
             </xsl:for-each>
         </body>
     </html>    
 </xsl:template>
</xsl:stylesheet>
