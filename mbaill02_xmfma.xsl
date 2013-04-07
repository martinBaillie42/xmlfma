<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
                            <div class="productblock">
                                <img class="juice" src="images/glasscitrusjuice.jpg" width="70" height="70" alt="juice" />
                                <h3>Citrus Zing</h3>
                                <p>
                                    Bursting with an unbelievable combination of all your favourite citrus fruits this juice will wake even the most tired sleeper
                                    from their slumbers. <span class="highlight">Citrus Zing</span> is packed with vitamins and bursting with vitamin C. Buy Now.  <a href="#">Buy Now</a>
                                </p>
                            </div>
                            <xsl:apply-templates/>
                        </div>
                        <div id="leftcol">
                            <div id="leftnavcontainer">
                                <ul>
                                    <li ><a class="current" href="fruitjuices.html">Fruit Juices</a></li>
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

    <xsl:template match="juice">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="name">
        <p><xsl:value-of select="."/></p>
    </xsl:template>

    <xsl:template match="ingredients">
        <p><xsl:value-of select="."/></p>
    </xsl:template>

    <xsl:template match="information">
        <p><xsl:value-of select="."/></p>
    </xsl:template>

    <xsl:template match="nutrition">
        <p><xsl:value-of select="."/></p>
    </xsl:template>

    <xsl:template match="price">
        <p><xsl:value-of select="."/></p>
    </xsl:template>

    <xsl:template match="image">
        <xsl:element name="image">
            <xsl:attribute name="src">
                <xsl:value-of select="." />
            </xsl:attribute>
        </xsl:element>
        <!--<img href='<xsl:value-of select="."/>' />-->
    </xsl:template>

</xsl:stylesheet>