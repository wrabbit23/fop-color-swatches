<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:param name="versionParam" select="'1.0'"/>
  <xsl:param name="perSection" select="8" />

  <xsl:template match="pencils">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <fo:simple-page-master master-name="simpleA4" page-height="11in" page-width="8.5in" margin-top="0.5in" margin-bottom="0.5in" margin-left="0.5in" margin-right="0.5in">
          <fo:region-body column-count="3"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="simpleA4">
        <fo:flow flow-name="xsl-region-body">

            <fo:table width="2.0in" table-layout="fixed">
              <fo:table-column column-width="1.00in"/>
              <fo:table-column column-width="1.00in"/>
              <fo:table-body>
                  <xsl:apply-templates select="pencil"/>
              </fo:table-body>
            </fo:table>

        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>

  <!-- ========================= -->
  <!-- child element: pencil     -->
  <!-- ========================= -->
  <xsl:template match="pencil">
    <fo:table-row>
      <fo:table-cell>
        <fo:block padding-top="0.3in" font-size="12pt" font-weight="bold">
          <xsl:value-of select="number"/>
        </fo:block>
        <fo:block font-size="8pt">
          <xsl:value-of select="name"/>
        </fo:block>
      </fo:table-cell>
        <fo:table-cell padding="0.125in">
        <fo:block line-height="0" font-size="0">
          <fo:external-graphic src="box.gif" height="0.75in" content-height="0.75in" width="0.75in" content-width="0.75in"/>
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
  </xsl:template>
</xsl:stylesheet>
