<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
    <!ENTITY ac     "https://w3id.org/atomgraph/client#">
    <!ENTITY aplc   "https://w3id.org/atomgraph/linkeddatahub/config#">
]>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ac="&ac;"
xmlns:aplc="&aplc;"
>
  
    <xsl:output method="xml" indent="yes"/>
  
    <xsl:param name="ac:stylesheet"/>
    <xsl:param name="ac:cacheStylesheet"/>
    <xsl:param name="aplc:clientKeyStore"/>
    <xsl:param name="aplc:secretaryCertAlias"/>
    <xsl:param name="aplc:clientTrustStore"/>
    <xsl:param name="aplc:clientKeyStorePassword"/>
    <xsl:param name="aplc:clientTrustStorePassword"/>
    <xsl:param name="aplc:uploadRoot"/>
    <xsl:param name="aplc:signUpCertValidity"/>
    <xsl:param name="aplc:contextDataset"/>
    <xsl:param name="aplc:authQuery"/>
    <xsl:param name="aplc:ownerAuthQuery"/>
    <xsl:param name="mail.smtp.host"/>
    <xsl:param name="mail.smtp.port"/>
    <xsl:param name="mail.user"/>
    <xsl:param name="mail.password"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="Context">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>

            <xsl:if test="$ac:stylesheet">
                <Parameter name="&ac;stylesheet" value="{$ac:stylesheet}" override="false"/>
            </xsl:if>
            <xsl:if test="$ac:cacheStylesheet">
                <Parameter name="&ac;cacheStylesheet" value="{$ac:cacheStylesheet}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:clientKeyStore">
                <Parameter name="&aplc;clientKeyStore" value="{$aplc:clientKeyStore}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:secretaryCertAlias">
                <Parameter name="&aplc;secretaryCertAlias" value="{$aplc:secretaryCertAlias}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:clientTrustStore">
                <Parameter name="&aplc;clientTrustStore" value="{$aplc:clientTrustStore}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:clientKeyStorePassword">
                <Parameter name="&aplc;clientKeyStorePassword" value="{$aplc:clientKeyStorePassword}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:clientTrustStorePassword">
                <Parameter name="&aplc;clientTrustStorePassword" value="{$aplc:clientTrustStorePassword}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:uploadRoot">
                <Parameter name="&aplc;uploadRoot" value="{$aplc:uploadRoot}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:signUpCertValidity">
                <Parameter name="&aplc;signUpCertValidity" value="{$aplc:signUpCertValidity}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:contextDataset">
                <Parameter name="&aplc;contextDataset" value="{$aplc:contextDataset}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:authQuery">
                <Parameter name="&aplc;authQuery" value="{$aplc:authQuery}" override="false"/>
            </xsl:if>
            <xsl:if test="$aplc:ownerAuthQuery">
                <Parameter name="&aplc;ownerAuthQuery" value="{$aplc:ownerAuthQuery}" override="false"/>
            </xsl:if>
            <xsl:if test="$mail.smtp.host">
                <Parameter name="mail.smtp.host" value="{$mail.smtp.host}" override="false"/>
            </xsl:if>
            <xsl:if test="$mail.smtp.port">
                <Parameter name="mail.smtp.port" value="{$mail.smtp.port}" override="false"/>
            </xsl:if>
            <xsl:if test="$mail.user">
                <Parameter name="mail.user" value="{$mail.user}" override="false"/>
            </xsl:if>
            <xsl:if test="$mail.password">
                <Parameter name="mail.password" value="{$mail.password}" override="false"/>
            </xsl:if>

            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- suppress existing parameters -->
    <xsl:template match="Parameter"/>

</xsl:stylesheet>