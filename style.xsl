<xsl:stylesheet id="style" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Prosit XML Groupe 2</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                
                <style type="text/css">/*<![CDATA[*/
                    body {
                      font-family: "DejaVu Sans";
                    }

                    h1 {
                      color: blue;
                    }

                    h2 {
                      color: cyan;
                    }
                    
                    h3 {
                      /* nope */
                    }

                    p {
                      background-color: darkgrey;
                      border: 1px solid grey;
                      padding: 5px;
                    }
                    
                    .define {
                      color: red;
                      font-weight: bold;
                    }
                    
                    .define:after {
                      content: "*";
                    }
                /*]]>*/</style>
            </head>
            <body>
                <h1>Prosit aller XML - Groupe 2</h1>
                <h2>Mots clefs</h2>
                <ul>
                <xsl:for-each select="prosit/keywords/word">
                    <li>
                    <xsl:if test=".[@define='true']">
                        <span class="define"><xsl:value-of select="." /></span>
                    </xsl:if>
                    <xsl:if test=".[not(@define='true')]">
                        <span><xsl:value-of select="." /></span>
                    </xsl:if>
                    </li>
                </xsl:for-each>
                </ul>
                
                <h2>Contexte</h2>
                <xsl:value-of select="prosit/context" />
                
                <h2>Besoins</h2>
                <ul>
                <xsl:for-each select="prosit/needs/need">
                    <li><xsl:value-of select="." /></li>
                </xsl:for-each>
                </ul>
                
                <h2>Généralisation</h2>
                <xsl:value-of select="prosit/general" />
                
                <h2>Pistes de solution</h2>
                <ul>
                <xsl:for-each select="prosit/hypothesis/idea">
                    <li><xsl:value-of select="." /></li>
                </xsl:for-each>
                </ul>
                
                <h2>Plan d'action</h2>
                <xsl:for-each select="prosit/plan/chapter">
                    <h3><xsl:value-of select="./@name" /></h3>
                    <ul>
                    <xsl:for-each select="./part">
                        <li><xsl:value-of select="." /></li>
                    </xsl:for-each>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="xsl:stylesheet">
        <!-- nope -->
    </xsl:template>
</xsl:stylesheet>

