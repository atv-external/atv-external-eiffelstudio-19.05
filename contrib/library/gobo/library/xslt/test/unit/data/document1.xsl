<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="2.0">


<xsl:template name="initial" >
  <output>
    <xsl:value-of select="document('books.xml')/BOOKLIST/BOOKS/ITEM[1]/TITLE"/>
  </output>
</xsl:template>

</xsl:transform>	
