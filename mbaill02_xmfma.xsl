<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                omit-xml-declaration="yes"
                indent="yes"/>
    <xsl:template match="juices">

        <!--<html xmlns="http://www.w3.org/1999/xhtml">-->
        <html>
            <head>
                <title>Yum Juices</title>
                <link rel="stylesheet" type="text/css" href="yumstyle.css" />
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            </head>
            <body >
                <div id="main">
                    <div id="commonlinksbar">
                     |  <a href="#">about us</a> |
                        <a href="#">contact us</a> |
                        <a href="#">sitemap</a> |
                        <a href="#">accessibility</a> |
                    </div>
                    <div id="header">
                        <h1>Yum Juices</h1>
                    </div>
                    <div id="topnavcontainer">
                        <ul id="topnavbar">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="juices.html" >Juices</a></li>
                            <li><a class="current" href="mbaill02_xmfma.xml">Juicers</a></li>
                            <li><a href="#">Recipes</a></li>
                            <li><a href="#">Promotions</a></li>
                        </ul>
                    </div>
                    <div id="contentcontainer">
                        <div id="rightcol">
                            <div id="breadcrumbbar">
                                <a class="small" href="index.html">Home</a> >
                                <a class="small" href="juices.html">Juices</a> >
                                <a class="small" href="#">Fruit Juices</a>
                            </div>
                            <h2>
                                Fruit Juices
                            </h2>
                            <ul id="productcontainer">
                                <xsl:apply-templates/>
                            </ul>

                        </div>
                        <div id="leftcol">
                            <div id="leftnavcontainer">
                                <ul>
                                    <li><a class="current" href="fruitjuices.html">Fruit Juices</a></li>
                                    <li><a href="#">Berry Juices</a></li>
                                    <li><a href="#">Vegetable Juices</a></li>
                                    <li><a href="#">Health Juices</a></li>
                                    <li><a href="#">Slimming Juices</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="footer">
                        <p>Copyright &#169;Yum Juices, 2011</p>
                    </div>

                </div>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="juice[@in_stock='Current']">
        <li>
            <ul class="productblock">
                <xsl:apply-templates/>
                <li><a href="#">Buy Now</a></li>
            </ul>
        </li>
    </xsl:template>

    <!-- Use xpath queries to only display the correct juices for each page
    Also add an instock attribute -->

    <xsl:template match="image">
        <li class="juice">
            <xsl:element name="image">
                <xsl:attribute name="src">
                    <xsl:value-of select="." />
                </xsl:attribute>
                <xsl:attribute name="width">70</xsl:attribute>
                <xsl:attribute name="height">70</xsl:attribute>
                <xsl:attribute name="alt">juice</xsl:attribute>
            </xsl:element>
        </li>
    </xsl:template>

    <xsl:template match="name">
        <li><h3><xsl:value-of select="."/></h3></li>
    </xsl:template>

    <xsl:template match="ingredients">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

    <xsl:template match="information">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

    <xsl:template match="nutrition">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

    <xsl:template match="price">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

</xsl:stylesheet>