<?xml version="1.0" encoding="utf-8"?>
<!--
/=====================================================================\ 
|  LaTeXML-math-mathml.xsl                                            |
|  copy MathML for xhtml                                              |
|=====================================================================|
| Part of LaTeXML:                                                    |
|  Public domain software, produced as part of work done by the       |
|  United States Government & not subject to copyright in the US.     |
|=====================================================================|
| Bruce Miller <bruce.miller@nist.gov>                        #_#     |
| http://dlmf.nist.gov/LaTeXML/                              (o o)    |
\=========================================================ooo==U==ooo=/
-->
<xsl:stylesheet
    version     = "1.0"
    xmlns:xsl   = "http://www.w3.org/1999/XSL/Transform"
    xmlns:ltx   = "http://dlmf.nist.gov/LaTeXML"
    xmlns:m     = "http://www.w3.org/1998/Math/MathML"
    xmlns:f     = "http://dlmf.nist.gov/LaTeXML/functions"
    extension-element-prefixes="f"
    exclude-result-prefixes = "ltx f">

  <xsl:param name="MathML_NAMESPACE">http://www.w3.org/1998/Math/MathML</xsl:param>

  <!-- Use MathML (if available in source) -->
  <xsl:param name="USE_MathML">true</xsl:param>
  <!-- If NOT using MathML, should we avoid using images to represent pure numbers? -->
  <xsl:param name="NO_NUMBER_IMAGES">true</xsl:param>
   
  <!-- The namespace to use on MathML elements (typically MathML_NAMESPACE or none) -->
  <xsl:param name="mml_ns">
    <xsl:value-of select="f:if($USE_NAMESPACES,$MathML_NAMESPACE,'')"/>
  </xsl:param>

  <xsl:strip-space elements="ltx:Math"/>

  <xsl:template match="ltx:Math">
        <xsl:apply-templates select="." mode="as-WikiMathTag"/>
  </xsl:template>

  <!-- Top level generated m:math element gets id & class from ltx:Math
       If the ltx:Math/m:math had any of those, they got lost! -->
  <xsl:template match="ltx:Math" mode="as-WikiMathTag">
    <xsl:element name="math">
      <!-- copy id, class, style from PARENT ltx:Math -->
      <xsl:call-template name="add_id"/>
      <xsl:call-template name="add_attributes"/>
      <!-- but copy OTHER m:math attributes -->
	<xsl:value-of select="@tex"/>
    </xsl:element>
  </xsl:template>

  <!-- Copy MathML, as is -->
  <xsl:template match="m:*">
    <xsl:element name="{local-name()}" namespace="{$mml_ns}">
      <xsl:for-each select="@*">
        <xsl:apply-templates select="." mode="copy-attribute"/>
      </xsl:for-each>
      <xsl:choose>
        <!-- If annotation-xml in a DIFFERENT namespace, copy as foreign markup -->
        <xsl:when test="local-name()='annotation-xml'                              
                        and not(namespace-uri(child::*) = $MathML_NAMESPACE)">
          <xsl:apply-templates mode='copy-foreign'/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>

  <!-- If we hit MathML while copying "foreign" markup, resume as above -->
  <xsl:template match="m:*" mode="copy-foreign">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>
