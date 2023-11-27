<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Converted HTML</title>
      </head>
      <body>
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th>Age</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="//person">
              <xsl:sort select="name"/>
              <xsl:variable name="age" select="age"/>
              <tr>
                <td><xsl:value-of select="name"/></td>
                <td>
                  <xsl:if test="$age &lt; 18">Minor</xsl:if>
                  <xsl:if test="$age &gt;= 18">Adult</xsl:if>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
