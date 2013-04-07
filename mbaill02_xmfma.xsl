<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version="1.0" xmlns:ad="http://www.martinbaillie.net/addressbook" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- below xsl:output taken from http://www.ehow.com/how_7433823_convert-xml-xhtml.html -->
<xsl:output method="html"
            omit-xml-declaration="yes"
            doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
            doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
        />

    <xsl:template match="ad:addressbook">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>HELLO</title>
            </head>
            <body>
                <h1 style="margin-left:20px;">Address Book</h1>
                <!--<xsl:apply-templates/>-->
            </body>
        </html>
    </xsl:template>

<!--    <xsl:template match="ad:contact">
        <table style="border-bottom:1px solid #000; margin:20px; padding-bottom:20px;">
            <tr>
                <th style="width:200px;">Id no.</th>
                <td style="width:200px;"><xsl:value-of select="@id" /></td>
            </tr>
            <xsl:apply-templates/>
        </table>
    </xsl:template>

    <xsl:template match="ad:individual">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="ad:name/ad:firstname">
        <tr>
            <th>Firstname</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:name/ad:surname">
        <tr>
            <th>Surname</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>-->

</xsl:stylesheet>