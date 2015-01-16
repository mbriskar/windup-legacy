<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:util="http://www.springframework.org/schema/util" xmlns:windup="http://www.jboss.org/schema/windup"
    xsi:schemaLocation="http://www.springframework.org/schema/beans
                        http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
                        http://www.springframework.org/schema/util
                        http://www.springframework.org/schema/util/spring-util-2.5.xsd
                        http://www.jboss.org/schema/windup
                        http://www.jboss.org/schema/windup.xsd">

<xsl:template match="windup:pipeline">
    <xsl:apply-templates select="./*"/>
    rootNodes.add(); <br/>
</xsl:template>

<xsl:template match="windup:file-gate">

regexFileNameFilter = new RegexFileNameFilter(<xsl:text>"</xsl:text><xsl:value-of select="@regex" /> <xsl:text>"</xsl:text>); <br/>
<xsl:for-each select="windup:decorators/windup:xpath-value">

<xsl:call-template name="xpath">
         <xsl:with-param name="xpathString" select="@xpath"/>
</xsl:call-template>
regexFileNameFilter.addChild(new XPathDescription(getID(), <xsl:text>"</xsl:text><xsl:value-of select="@description" /> <xsl:text>"</xsl:text>, xpath, 
<xsl:choose>
  <xsl:when test="@inline">
    <xsl:value-of select="@inline" />
  </xsl:when>
  <xsl:otherwise>
    false
  </xsl:otherwise>
</xsl:choose> 


, false)); <br/>
 </xsl:for-each>

<xsl:for-each select="windup:decorators/windup:xpath-summary">

<xsl:call-template name="xpath">
         <xsl:with-param name="xpathString" select="@xpath"/>
</xsl:call-template>
regexFileNameFilter.addChild(new XPathDescription(getID(), <xsl:text>"</xsl:text><xsl:value-of select="@description" /> <xsl:text>"</xsl:text>, xpath,

<xsl:choose>
  <xsl:when test="@inline">
    <xsl:value-of select="@inline" />
  </xsl:when>
  <xsl:otherwise>
    false
  </xsl:otherwise>
</xsl:choose> 


, false)); <br/>


, true)); <br/>
 </xsl:for-each>
</xsl:template>


<xsl:template name="xpath"> <xsl:param name="xpathString"/>

xpath = new Xpath(); <br/>
xpath.setXpathString(<xsl:text>"</xsl:text><xsl:value-of select="$xpathString" /> <xsl:text>"</xsl:text>); <br/>

<xsl:for-each select="windup:namespace">
      xpath.addNamespace(<xsl:text>"</xsl:text><xsl:value-of select="@prefix" /> <xsl:text>"</xsl:text>, <xsl:text>"</xsl:text><xsl:value-of select="@uri" /> <xsl:text>"</xsl:text>); <br/>
 </xsl:for-each>
 </xsl:template>



</xsl:stylesheet>
