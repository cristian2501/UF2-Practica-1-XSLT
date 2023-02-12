<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h2>Lista de Alumnos</h2>
      <!-- Estilos Inline -->
      <table border="1">
        <tr bgcolor="orange">
          <!-- Cabecera de la tabla-->
          <th>Nombre</th>
          <th>Apellido</th>
        </tr>
        <!-- Repetira el procedimiento para cada valor en alumno -->
        <xsl:for-each select="Lista/alumnos/alumno">
        <tr>
          <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="apellido"/></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>