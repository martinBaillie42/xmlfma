<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="health">

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
                            <li><a class="current" href="juices.html" >Juices</a></li>

                            <li><a href="#">Juicers</a></li>
                            <li><a href="#">Recipes</a></li>
                            <li><a href="#">Promotions</a></li>
                        </ul>
                    </div>
                    <div id="contentcontainer">
                        <div id="rightcol">

                            <div id="breadcrumbbar">
                                <a class="small" href="index.html">Home</a> >
                                <a class="small" href="juices.html">Juices</a> >
                                <a class="small" href="#">Health Juices</a>
                            </div>
                            <h2>
                                Health Juices
                            </h2>

                            <div class="productblock">
                                <img class="juice" src="images/glasscitrusjuice.jpg" width="70" height="70" alt="juice" />

                                <p style="font-family:Tahoma; font-size:12px;color:black;width:500px;height: 160px;">

                                    <xsl:apply-templates select="juicename-a"/>
                                    <xsl:apply-templates select="fruittype-a"/>
                                    <xsl:apply-templates select="ingredients-a"/>
                                    <xsl:apply-templates select="promotions-a"/>
                                    <xsl:apply-templates select="pricing-a"/>
                                </p>

                            </div>

                            <div class="productblock">
                                <img class="juice" src="images/glassberryjuice.jpg" width="70" height="70" alt="juice" />

                                <p style="font-family:Tahoma; font-size:12px;color:black;width:500px;height: 160px;">

                                    <xsl:apply-templates select="juicename-b"/>
                                    <xsl:apply-templates select="fruittype-b"/>
                                    <xsl:apply-templates select="ingredients-b"/>
                                    <xsl:apply-templates select="promotions-b"/>
                                    <xsl:apply-templates select="pricing-b"/>
                                </p>

                            </div>
                            <div class="productblock">
                                <img class="juice" src="images/glasstangsterjuice.jpg" width="70" height="70" alt="juice" />

                                <p style="font-family:Tahoma; font-size:12px;color:black;width:500px;height: 160px;">

                                    <xsl:apply-templates select="juicename-c"/>
                                    <xsl:apply-templates select="fruittype-c"/>
                                    <xsl:apply-templates select="ingredients-c"/>
                                    <xsl:apply-templates select="promotions-c"/>
                                    <xsl:apply-templates select="pricing-c"/>
                                </p>

                            </div>
                        </div>
                        <div id="leftcol">
                            <div id="leftnavcontainer">
                                <ul>
                                    <li ><a href="juice.xml">Fruit Juices</a></li>
                                    <li><a href="berries.xml">Berry Juices</a></li>
                                    <li><a href="vegetable.xml">Vegetable Juices</a></li>
                                    <li><a class="current" href="#">Health Juices</a></li>
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

    <xsl:template match="juicename-a">
        <span style="color:#000;font-family:Tahoma;font-size:16px;">
            <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="fruittype-a">
        Fruit Type: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br />
    </xsl:template>
    <xsl:template match="ingredients-a">
        Drink Ingredients: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="promotions-a">
        About: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="price-a">
        Price: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span>
    </xsl:template>

    <xsl:template match="juicename-b">
        <span style="color:#000;font-family:Tahoma;font-size:16px;">
            <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="fruittype-b">
        Fruit Type: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br />
    </xsl:template>
    <xsl:template match="ingredients-b">
        Drink Ingredients: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="promotions-b">
        About: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="price-b">
        Price: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br />
    </xsl:template>

    <xsl:template match="juicename-c">
        <span style="color:#000;font-family:Tahoma;font-size:16px;">
            <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="fruittype-c">
        Fruit Type: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br />
    </xsl:template>
    <xsl:template match="ingredients-c">
        Drink Ingredients: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="promotions-c">
        About: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br /><br />
    </xsl:template>
    <xsl:template match="price-c">
        Price: <span style="color:#000;font-family:Tahoma;font-size:12px;">
        <xsl:value-of select="."/></span> <br />
    </xsl:template>


</xsl:stylesheet>