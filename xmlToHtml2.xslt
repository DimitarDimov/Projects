<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" version="1.0" encoding="UTF-8"/>

    <xsl:variable name="space">
        <txt>&#32;</txt>
    </xsl:variable>

    <xsl:template match="/">

        <html>
            <head>
                <title>Магазин за смартфони</title>
            </head>
            <body>
                <h2>Подредба по размер на дисплея</h2>
                <table border="1">

                    <xsl:for-each
                        select="smartphones/smartphone">
                        <xsl:sort select="screen/size"/>
                        <thead> 
                            <tr bgcolor="#EFF0F1">
                            <th style="padding:10px;">Марка</th>
                            <th style="padding:10px;">Модел</th>
                            <th style="padding:10px;">Година на производство</th>
                            <th style="padding:10px;">Цена</th> 
                            <th style="padding:10px;">Дисплей</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr >
                                <td style="padding:20px;"><xsl:value-of select="make"/></td>
                                <td style="padding:20px;"><xsl:value-of select="model"/></td>
                                <td style="padding:20px;"><xsl:value-of select="@year"/></td>
                                <td style="padding:20px;"><xsl:value-of select="price/@value"/></td>
                                <xsl:choose>
                                    <xsl:when test="screen/size &lt; 5">
                                        <td bgcolor="#4CAF50" style="padding:20px;">
                                            <xsl:value-of select="screen/size"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:when test="screen/size &gt; 5.2">
                                        <td bgcolor="red" style="padding:20px;">
                                            <xsl:value-of select="screen/size"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td style="padding:20px;"><xsl:value-of select="screen/size"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </tbody>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
