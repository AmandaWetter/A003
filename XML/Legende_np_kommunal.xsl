<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:my="my:my">
  <xsl:output method="html" doctype-public="about:legacy-compat" encoding="UTF-8" indent="yes" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <html>
      <head>
        <!--<link rel="stylesheet"  media="screen" type="text/css" href="Legende.css"/>-->
        <!--<link rel="stylesheet" media="print" type="text/css" href="Legende_print.css"/>-->
        <link rel="stylesheet" media="screen" type="text/css" href="../A000a/styles/xml/Legende.css"/>  
        <link rel="stylesheet" media="print" type="text/css" href="../A000a/styles/xml/Legende_print.css"/>        
      </head>
      
    <body>
    
       <h1 class="Gemeinde">Legende kommunale Nutzungsplanung Gemeinde <xsl:value-of select='Gemeindedaten/Gemeinde'/></h1>     

        <table>
          <xsl:apply-templates/>
        </table>
        
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Gemeindedaten">
    <thead>
      <tr>
        <th>Symbol</th>
        <th>Bezeichnung</th>
        <th>Abkürzung</th>
        <th>Code</th>
      </tr>
    </thead>
    <tbody>
		  <xsl:apply-templates select="Legende/Legendeneintrag"/>
    </tbody>
  </xsl:template>
  

  <xsl:template match="Legende/Legendeneintrag">
    <tr>
      <xsl:apply-templates select="Symbol"/>
      <xsl:apply-templates select="Bezeichnung"/>
      <xsl:apply-templates select="Abkuerzung"/>
      <xsl:apply-templates select="Code"/>
    </tr>
  </xsl:template>

  <xsl:template match="Legendeneintrag/Symbol">
    <td id="Symbol">
      <img src="data:image/png;base64,{.}"/>
    </td>
  </xsl:template>    

  <xsl:template match="Legendeneintrag/Bezeichnung">
    <td>
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

  <xsl:template match="Legendeneintrag/Abkuerzung">
    <td>
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

  <xsl:template match="Legendeneintrag/Code">
    <td>
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

</xsl:transform>