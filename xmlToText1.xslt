<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="text" indent="no" />
 
    <xsl:template match="/">

                Смартфони              
        
        <xsl:for-each select="/smartphones/smartphone">
        
        
--><xsl:value-of select="make"/>
    Модел:              <xsl:value-of select="model"/>
    Дисплей:            <xsl:value-of select="screen/size"/>
    Цена:               <xsl:value-of select="price/@value"/>
    Процесор:           <xsl:value-of select="specifications/processor/modelOfProcessor"/>
    RAM:                <xsl:value-of select="specifications/RAM"/>
    Памет:              <xsl:value-of select="specifications/memory/internal"/>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>