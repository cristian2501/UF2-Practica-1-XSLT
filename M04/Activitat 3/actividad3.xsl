<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="Empleados">
    <html>
        <head>
            <!-- Estilos de la tabla-->
            <style>
                table{
                    border: 1px solid #000;
                    width:75% ;
                    border-collapse: collapse;
                }
                th, td {
                    width: 25%;
                    text-align: center;
                    border: 1px solid #000;
                 }
                 th{
                    background-color: #0a7273;
                 }
                 h1{
                    margin-left:30% ;
                 }
            </style>
        </head>
        <body>
            <!-- Titulo-->
            <h1>Lista de Empleados</h1>
            <!-- Encabezado de la tabla-->
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>DNI</th>
                    <th>Email</th>
                    <th>Telefono</th>
                    <th>Sueldo</th>
                </tr>
                <!-- Selecciona todos los valores de la misma etiqueta -->
                <xsl:for-each select="empleado">
                <xsl:sort select="apellido" />
                
                     <!-- Datos de la tabla-->
                    <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellido"/></td>
                            <td><xsl:value-of select="dni"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="telefono"/></td>

                        <xsl:if test="sueldo >= 1300"> <!-- Condicion -->
                            <td><xsl:value-of select="sueldo"/></td>
                        </xsl:if> <!-- Fin de la condicion -->
                    </tr>
                   
                </xsl:for-each>
                
            </table>
        </body>
    </html>

</xsl:template>


</xsl:stylesheet>