<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/smartphones">
 <root>
 <xsl:apply-templates select="smartphone"/>
 </root>
 </xsl:template>
<xsl:template match="smartphone">
 <name>
 <xsl:value-of select="make"/>
 </name>
 <processor>
 <processor>
 <xsl:value-of select="specifications/processor/producer"/>
  </processor>
  <modelOfProcessor><xsl:value-of select="specifications/processor/modelOfProcessor"/></modelOfProcessor>
 </processor>
 </xsl:template>
</xsl:stylesheet>