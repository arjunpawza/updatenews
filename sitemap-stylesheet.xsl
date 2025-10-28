<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>XML Sitemap</title>
                <style>
                    body {
                        font-family: sans-serif;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                        border-bottom: 1px solid #ddd;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    a {
                        text-decoration: none;
                        color: #0000EE;
                    }
                    a:visited {
                        color: #551A8B;
                    }
                </style>
            </head>
            <body>
                <h1>XML Sitemap</h1>
                <table>
                    <tr>
                        <th>URL</th>
                        <th>Last Modified</th>
                    </tr>
                    <xsl:for-each select="//*[local-name()='sitemap' or local-name()='url']">
                        <tr>
                            <td>
                                <xsl:variable name="loc" select="*[local-name()='loc']"/>
                                <a href="{$loc}"><xsl:value-of select="$loc"/></a>
                            </td>
                            <td>
                                <xsl:value-of select="*[local-name()='lastmod']"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
