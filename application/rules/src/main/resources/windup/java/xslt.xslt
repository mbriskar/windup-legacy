<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:windup="http://www.jboss.org/schema/windup"
    xsi:schemaLocation="http://www.springframework.org/schema/beans
           http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
           http://www.jboss.org/schema/windup http://www.jboss.org/schema/windup.xsd">

<xsl:template match="/">
    <xsl:apply-templates/>
</xsl:template>



<xsl:template match="windup:java-whitelist">
.addRule() <br/>
.when( <br/>
      JavaClass.references(<xsl:text>"</xsl:text><xsl:value-of select="@regex" /><xsl:text>"</xsl:text>)
<xsl:choose>
  <xsl:when test="@source-type">
.at(TypeReferenceLocation.<xsl:value-of select="@source-type"/>)
  </xsl:when>

  <xsl:otherwise>
.at(TypeReferenceLocation.NOTSPECIFIED)
  </xsl:otherwise>
</xsl:choose> 


)
.perform(   <br/>
Iteration.over().perform(   <br/>
                           WhiteList.add() <br/>
                        ) <br/>
                        .endIteration() <br/>
) <br/>
</xsl:template>

<xsl:template match="windup:java-classification">.addRule() <br/>
.when( <br/>
      JavaClass.references(<xsl:text>"</xsl:text><xsl:value-of select="@regex" /><xsl:text>"</xsl:text>)
<xsl:choose>
  <xsl:when test="@source-type">
.at(TypeReferenceLocation.<xsl:value-of select="@source-type"/>)
  </xsl:when>

  <xsl:otherwise>
.at(TypeReferenceLocation.NOTSPECIFIED)
  </xsl:otherwise>
</xsl:choose> 


)
.perform(   <br/>
Iteration.over().perform(   <br/>
                           Classification.classifyAs(<br/>
                       

<xsl:choose>
  <xsl:when test="@description">
    <xsl:text>"</xsl:text><xsl:value-of select="@description" /><xsl:text>"</xsl:text>
  </xsl:when>
  <xsl:otherwise>
null
  </xsl:otherwise>
</xsl:choose> 
)
<xsl:choose>
  <xsl:when test="windup:decorators">
   .with(
<xsl:apply-templates select="windup:decorators/windup:link"/>
)
  </xsl:when>
  <xsl:otherwise>
  
  </xsl:otherwise>
</xsl:choose> 
.withEffort(
<xsl:choose>
  <xsl:when test="@effort">
   <xsl:value-of select="@effort" />
  </xsl:when>
  <xsl:otherwise>
  0
  </xsl:otherwise>
</xsl:choose> 
<br/> 

 ) )<br/>
                        .endIteration() <br/>
) <br/>

<xsl:apply-templates select="windup:hints/windup:java-hint"/>
</xsl:template>

<xsl:template match="windup:link">
Link.to(
<xsl:text>"</xsl:text><xsl:value-of select="@description" /><xsl:text>"</xsl:text>
,<xsl:text>"</xsl:text><xsl:value-of select="@url" /><xsl:text>"</xsl:text>)
</xsl:template>


<xsl:template match="windup:java-hint">
.addRule() <br/>
.when( <br/>
      JavaClass.references(<xsl:text>"</xsl:text><xsl:value-of select="@regex" /><xsl:text>"</xsl:text>)
<xsl:choose>
  <xsl:when test="@source-type">
.at(TypeReferenceLocation.<xsl:value-of select="@source-type"/>)
  </xsl:when>

  <xsl:otherwise>
.at(TypeReferenceLocation.NOTSPECIFIED)
  </xsl:otherwise>
</xsl:choose> 



)
.perform(
                       Iteration.over().perform( Hint.havingText(

<xsl:choose>
  <xsl:when test="@hint">
   <xsl:text>"</xsl:text><xsl:value-of select="@hint" /><xsl:text>"</xsl:text> 
  </xsl:when>
  <xsl:otherwise>
null
  </xsl:otherwise>
</xsl:choose> 


).withEffort(

<xsl:choose>
  <xsl:when test="@effort">
   <xsl:value-of select="@effort" />
  </xsl:when>
  <xsl:otherwise>
  0
  </xsl:otherwise>
</xsl:choose> 


) <br/>
                       ) <br/>
                       .endIteration() <br/>
                    ) <br/>







<br/> 
</xsl:template>

</xsl:stylesheet> 
