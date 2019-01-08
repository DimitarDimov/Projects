<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="text" indent="no" />
 
    <xsl:template match="/">

                Смартфони, 
            подредени по цена               
        
        <xsl:for-each select="/smartphones/smartphone">
        <xsl:sort select="price/@value"/>

        
--><xsl:value-of select="make"/>
    Модел:              <xsl:value-of select="model"/>
    Цена:               <xsl:value-of select="price/@value"/>
        
        </xsl:for-each>
        


                Смартфони, 
    подредени по година на производство               
        
        <xsl:for-each select="smartphones/smartphone">
            <xsl:sort select="@year"/>

        
--><xsl:value-of select="make"/>
    Модел:                  <xsl:value-of select="model"/>
    Година на производство: <xsl:value-of select="@year"/>
        
        </xsl:for-each>
                

        
                Смартфони, 
        подредени по RAM               
        
        <xsl:for-each select="/smartphones/smartphone">
        <xsl:sort select="specifications/RAM"/>

        
--><xsl:value-of select="make"/>
    Модел:                  <xsl:value-of select="model"/>
    RAM:                    <xsl:value-of select="specifications/RAM"/>
        
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>