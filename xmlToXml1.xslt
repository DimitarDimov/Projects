<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="smartphones">
    <processor>
        <producer>
            <xsl:attribute name= "producer">
                <xsl:value-of select= "laptop/specifications/processor/producer"/>
            </xsl:attribute>
        </producer>
        <modelOfProcessor>
        <xsl:attribute name= "modelOfProcessor">
            <xsl:value-of select= "laptop/specifications/processor/modelOfProcessor"/>
        </xsl:attribute>
        </modelOfProcessor>
        <typeOfProcessor>
        <xsl:attribute name= "typeOfProcessor">
            <xsl:value-of select= "laptop/specifications/processor/typeOfProcessor"/>
        </xsl:attribute>
        </typeOfProcessor>
        <cores>
        <xsl:attribute name= "cores">
            <xsl:value-of select= "laptop/specifications/processor/cores"/>
        </xsl:attribute>
        </cores>
        <freq>
        <xsl:attribute name= "frequency">
            <xsl:value-of select= "laptop/specifications/processor/frequency"/>
        </xsl:attribute>
        </freq>
    </processor>
</xsl:template>



</xsl:stylesheet>