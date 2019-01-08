<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" version="1.0" encoding="UTF-8"/>
    
    <xsl:template match="/">        
        
        <html>
            <head>
                <title>Магазин за смартфони</title>
            </head>
            <body>
                <h2>Подредба по година на производство след 2013.</h2>                
                <table border="1" style="padding:15px;">                    
                    <thead>
                        <tr bgcolor="#EFF0F1">
                            <th style="padding:15px;">Марка</th>
                            <th style="padding:15px;">Модел</th>
                            <th style="padding:15px;">Година на производство</th> 
                            <th style="padding:15px;">Цена</th>                   
                        </tr>
                    </thead>                    
                    <tbody>
                        <xsl:for-each select="smartphones/smartphone">
                        <xsl:sort select="@year"/>
                            <xsl:if test="@year &gt; 2013">                        
                                <tr>
                                
                                    <td><xsl:value-of select="make"/></td>
                                    <td><xsl:value-of select="model"/></td>
                                    <td><xsl:value-of select="@year"/></td>
                                    <xsl:choose>
                                        <xsl:when test="price/@value &lt; 500">
                                            <td bgcolor="#4CAF50">
                                                <xsl:value-of select="price/@value"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:when test="price/@value &gt;1000">
                                            <td bgcolor="red">
                                                <xsl:value-of select="price/@value"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td><xsl:value-of select="price/@value"/></td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </tr>
                            </xsl:if>  
                        </xsl:for-each>              
                    </tbody>             
                </table>
                <p style="color:#4CAF50;">Смартфони на достъпна цена.</p>
                <p style="color:red;">Високо бюджетни смартфони.</p>
            </body>
        </html>      
    </xsl:template>    
</xsl:stylesheet>