<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1 style="color:green"><!-- Estilo Inline-->
                <xsl:value-of select="title/text"/><!-- EL value of buscara el valor que esta dentro del xml-->
            </h1>
        </body>
    </html>

</xsl:template>


</xsl:stylesheet>