<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:METS="http://www.loc.gov/METS/"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- izhodiščni je list-image.xml -->
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:param name="lastSIDIHfileNumber">2551</xsl:param>
    
    <xsl:param name="pathStart">../import/images</xsl:param>
    <xsl:param name="path2entity">/sidih/menuTop/menu1/menu5/</xsl:param>
    <xsl:param name="entity-num">120</xsl:param>
    
    <xsl:template match="root">
        <xsl:for-each select="figure">
            <xsl:variable name="fileNumber" select="position() + $lastSIDIHfileNumber"/>
            <xsl:variable name="document" select="concat($pathStart,$path2entity,$entity-num,'/file',$fileNumber,'/mets.xml')"/>
            <xsl:variable name="fileName" select="graphic"/>
            <xsl:result-document href="{$document}">
                <METS:mets xmlns:METS="http://www.loc.gov/METS/" xmlns:xlink="http://www.w3.org/TR/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                    TYPE="file" ID="si4.file{$fileNumber}" OBJID="http://hdl.handle.net/20.500.12325/file{$fileNumber}">
                    <METS:metsHdr CREATEDATE="{current-dateTime()}" LASTMODDATE="" RECORDSTATUS="Active">
                        <METS:agent ROLE="DISSEMINATOR" TYPE="ORGANIZATION">
                            <METS:name>Sidih</METS:name>
                            <METS:note>https://sidih.si</METS:note>
                        </METS:agent>
                        <METS:agent ROLE="CREATOR" ID="3" TYPE="INDIVIDUAL">
                            <METS:name>Pančur, Andrej</METS:name>
                        </METS:agent>
                    </METS:metsHdr>
                    <METS:dmdSec ID="description">
                        <METS:mdWrap MDTYPE="DC">
                            <METS:xmlData xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcmitype="http://purl.org/dc/dcmitype/">
                                <xsl:for-each select="title[string-length(.) gt 0]">
                                    <dc:title xml:lang="{@xml:lang}">
                                        <xsl:value-of select="normalize-space(.)"/>
                                    </dc:title>
                                </xsl:for-each>
                                <dc:creator>Pahor de Maiti, Kristina</dc:creator>
                                <dc:creator>Fišer, Darja</dc:creator>
                                <dc:date>2020</dc:date>
                                <dcterms:isPartOf>http://hdl.handle.net/20.500.12325/file2543</dcterms:isPartOf>
                            </METS:xmlData>
                        </METS:mdWrap>
                    </METS:dmdSec>
                    <METS:amdSec ID="amd">
                        <METS:techMD ID="tech.premis">
                            <METS:mdWrap MDTYPE="PREMIS:OBJECT" MIMETYPE="text/xml">
                                <METS:xmlData xmlns:premis="http://www.loc.gov/premis/v3">
                                    <premis:objectIdentifier>
                                        <premis:objectIdentifierType>si4</premis:objectIdentifierType>
                                        <premis:objectIdentifierValue></premis:objectIdentifierValue>
                                    </premis:objectIdentifier>
                                    <premis:objectIdentifier>
                                        <premis:objectIdentifierType>Local name</premis:objectIdentifierType>
                                        <premis:objectIdentifierValue></premis:objectIdentifierValue>
                                    </premis:objectIdentifier>
                                    <premis:objectIdentifier>
                                        <premis:objectIdentifierType>hdl</premis:objectIdentifierType>
                                        <premis:objectIdentifierValue></premis:objectIdentifierValue>
                                    </premis:objectIdentifier>
                                    <premis:objectCategory>File</premis:objectCategory>
                                </METS:xmlData>
                            </METS:mdWrap>
                        </METS:techMD>
                        <METS:techMD ID="tech.si4">
                            <METS:mdWrap MDTYPE="OTHER" OTHERMDTYPE="SI4" MIMETYPE="text/xml">
                                <METS:xmlData xmlns:si4="http://si4.si/schema/">
                                    <si4:additionalMetadata>false</si4:additionalMetadata>
                                </METS:xmlData>
                            </METS:mdWrap>
                        </METS:techMD>
                    </METS:amdSec>
                    <METS:fileSec xmlns:xlink="http://www.w3.org/1999/xlink" ID="files">
                        <!-- System will manage this section when you save -->
                        <METS:fileGrp USE="DEFAULT">
                            <METS:file ID="file{$fileNumber}" OWNERID="{$fileName}" USE="DEFAULT" CREATED="" SIZE="" CHECKSUM="" CHECKSUMTYPE="" MIMETYPE="image/jpeg">
                                <METS:FLocat ID="file{$fileNumber}" USE="HTTP" LOCTYPE="URL" title="{$fileName}" href="http://hdl.handle.net/20.500.12325/file{$fileNumber}"/>
                            </METS:file>
                        </METS:fileGrp>
                    </METS:fileSec>
                    <METS:structMap xmlns:xlink="http://www.w3.org/1999/xlink" ID="structure" TYPE="primary">
                        <!-- System will manage this section when you save -->
                    </METS:structMap>
                    <METS:behaviorSec xmlns:xlink="http://www.w3.org/1999/xlink" ID="si4.behavior">
                        <METS:behavior BTYPE="default">
                            <METS:mechanism LOCTYPE="URL" xlink:href="https://dihur.si/si4/sidih_behavior-default"/>
                        </METS:behavior>
                    </METS:behaviorSec>
                </METS:mets>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>