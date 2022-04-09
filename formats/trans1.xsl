<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
     <xsl:element name="h1">
<xsl:attribute name="style">color:violet;</xsl:attribute>
Scan results transformation 1
</xsl:element>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Value</th>
      </tr>
      <xsl:for-each select="result/detail">
      <tr>
        <td><xsl:value-of select="name" /></td>
        <td><xsl:value-of select="value" /></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
