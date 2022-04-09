<?xml version="1.0" encoding="UTF-8"?>
  <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
     <xsl:element name="h1">
<xsl:attribute name="style">color:greed;</xsl:attribute>
Scan results 1
</xsl:element>

    <h4> The following structures are normal: 
<xsl:for-each select="result/detail[value='Normal']">

    <xsl:value-of select="name"/>
 <xsl:if test="not(position() = last())" >
, <xsl:text> </xsl:text>
      </xsl:if> 
    </xsl:for-each>
</h4>
 <h4> The following structures are abnormal: 
<xsl:for-each select="result/detail[value='Abnormal']">

    <xsl:value-of select="name"/>
 <xsl:if test="not(position() = last())" >
, <xsl:text> </xsl:text>
      </xsl:if> 
    </xsl:for-each>
</h4>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

