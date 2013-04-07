<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version="1.0" xmlns:ad="http://www.martinbaillie.net/addressbook" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- below taken from http://www.ehow.com/how_7433823_convert-xml-xhtml.html -->
<xsl:output method="html"
            omit-xml-declaration="yes"
            doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
            doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
        />

    <xsl:template match="ad:addressbook">
        <html style="text-align:left; font-family:Arial, Helvetica, sans-serif;">
            <body>
                <h1 style="margin-left:20px;">Address Book</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ad:contact">
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
    </xsl:template>

    <xsl:template match="ad:tel_home">
        <tr>
            <th>Home telephone no.</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:tel_work">
        <tr>
            <th>Work telephone no.</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:tel_fax">
        <tr>
            <th>Fax no.</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:organisation">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="ad:organisation_name">
        <tr>
            <th>Organisation</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:tel_organisation">
        <tr>
            <th>Telephone no.</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:fax_organisation">
        <tr>
            <th>Fax no.</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:address">
        <tr>
            <th style="text-decoration:underline;">Address</th>
            <td></td>
        </tr>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="ad:address_one">
        <tr>
            <th>Line 1</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:address_two">
        <tr>
            <th>Line 2</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:address_three">
        <tr>
            <th>Line 3</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:town">
        <tr>
            <th>Town</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:city">
        <tr>
            <th>City</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:county">
        <tr>
            <th>County</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:postcode">
        <tr>
            <th>Postcode</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:country">
        <tr>
            <th>Country</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

    <xsl:template match="ad:email">
        <tr>
            <th>Email address</th>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>