<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" version="1.0" encoding="UTF-8"/>
    
    <xsl:template match="/">        
        
        <html>
            <head>
                <title>Магазин за смартфони</title>
            </head>
            <body>
                <h2>Подробни спецификации на устройствата.</h2>                
                <table border="1" style="padding:15px;">                    
                    <thead>
                        <tr bgcolor="#EFF0F1">
                            <th style="padding:15px;">Марка</th>
                            <th style="padding:15px;">Модел</th>
                            <th style="padding:15px;">Година на производство</th>
                            <th style="padding:15px;">Дисплей: инчове и технология</th>  
                            <th style="padding:15px;">Цена</th>
                            <th style="padding:15px;">Спецификации</th>                    
                        </tr>
                    </thead>                    
                    <tbody>
                        <xsl:for-each select="smartphones/smartphone">                            
                            <tr>
                                <td><xsl:value-of select="make"/></td>
                                <td><xsl:value-of select="model"/></td>
                                <td><xsl:value-of select="@year"/></td>
                                <td><xsl:value-of select="screen/size/inches"/><xsl:value-of select="screen/technology"/></td>
                                <xsl:choose>
                                    <xsl:when test="price/@value &lt; 500">
                                        <td bgcolor="#4CAF50">
                                            <xsl:value-of select="price/@value"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:when test="price/@value &gt; 1000">
                                        <td bgcolor="red">
                                            <xsl:value-of select="price/@value"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="price/@value"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <td>
                                    <table border="1" style="padding:15px;">                    
                                        <thead>
                                            <tr bgcolor="#EFF0F1">
                                                <th>Процесор</th>
                                                <th>RAM</th>
                                                <th>Памет</th>
                                                <th>Портове</th> 
                                                <th>Батерия</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><xsl:value-of select="specifications/processor/modelOfProcessor"/></td>
                                                <td><xsl:value-of select="specifications/RAM"/></td>
                                                <td><xsl:value-of select="specifications/memory/internal"/></td>
                                                <td><xsl:value-of select="specifications/ports"/></td>
                                                <td><xsl:value-of select="specifications/battery/mAh"/></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </xsl:for-each>              
                    </tbody>             
                </table>
                <p style="color:#4CAF50;">Смартфони на достъпна цена.</p>
                <p style="color:red;">Високо бюджетни смартфони.</p>
            </body>
        </html>      
    </xsl:template>    
</xsl:stylesheet>