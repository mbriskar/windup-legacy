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
"amx_", Types.add(ClassCandidateType.TYPE)));


<xsl:template match="windup:java-whitelist">
<xsl:choose>
  <xsl:when test="@source-type">
    items.add(new WhiteListItem(getID(), <xsl:text>"</xsl:text><xsl:value-of select="@regex" /> <xsl:text>"</xsl:text>, Types.add(ClassCandidateType.<xsl:value-of select="@source-type"/>)));

  </xsl:when>
  <xsl:otherwise>
items.add(new WhiteListItem(getID(),  <xsl:text>"</xsl:text><xsl:value-of select="@regex" /> <xsl:text>"</xsl:text>, null));
     <br/>
<xsl:text>&#10;</xsl:text>
  </xsl:otherwise>
</xsl:choose> 

</xsl:template>

<xsl:template match="windup:java-classification">
classifications.add(new JavaClassification(getID(), <xsl:text>"</xsl:text><xsl:value-of select="@description" /> <xsl:text>"</xsl:text>, <xsl:text>"</xsl:text><xsl:value-of select="@regex" /> <xsl:text>"</xsl:text>,

<xsl:choose>
  <xsl:when test="@effort">
    <xsl:value-of select="@effort" />,
  </xsl:when>
  <xsl:otherwise>
0,
<xsl:text>&#10;</xsl:text>
  </xsl:otherwise>
</xsl:choose> 

<xsl:choose>
  <xsl:when test="@source-type">
   Types.add(ClassCandidateType.<xsl:value-of select="@source-type"/>)));
  </xsl:when>
  <xsl:otherwise>
  null));
  </xsl:otherwise>
</xsl:choose> 
<br/> 

</xsl:template>


<xsl:template match="windup:java-hint">
hints.add(new BlackListRegex(getID(), <xsl:text>"</xsl:text><xsl:value-of select="@regex" /><xsl:text>"</xsl:text>,

<xsl:choose>
  <xsl:when test="@hint">
   <xsl:text>"</xsl:text><xsl:value-of select="@hint" /><xsl:text>"</xsl:text>, 
  </xsl:when>
  <xsl:otherwise>
null,
  </xsl:otherwise>
</xsl:choose> 




<xsl:choose>
  <xsl:when test="@effort">
   <xsl:value-of select="@effort" />,
  </xsl:when>
  <xsl:otherwise>
  0,
  </xsl:otherwise>
</xsl:choose> 

<xsl:choose>
  <xsl:when test="@source-type">
   Types.add(ClassCandidateType.<xsl:value-of select="@source-type"/>)));
  </xsl:when>
  <xsl:otherwise>
  null));
  </xsl:otherwise>
</xsl:choose> 
<br/> 
</xsl:template>

</xsl:stylesheet> 
