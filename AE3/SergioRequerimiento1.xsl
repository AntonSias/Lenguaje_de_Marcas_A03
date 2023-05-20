<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Empresa Proeduca</title>
            </head>
            <body>
                <h1>Empresa Proeduca</h1>
                <h2>Profesores</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/*/Profesores/Profesor">
                            <tr>
                                <td>
                                    <xsl:value-of select="ID"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Nombre"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <h2>Ciclos</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Año de Decreto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/*/Ciclos/Ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="ID"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Grado"/>
                                </td>
                                <td>
                                    <xsl:value-of select="AnioDecret"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <h2>Contacto</h2>
                <ul>
                    <li>
                        <a href="https://institutotecnologico.edix.com">Instituto Tecnológico Edix</a>
                    </li>
                    <li>
                        <a href="https://unirfp.unir.net/cf-grados-superiores">URJ</a>
                    </li>
                    <li>Teléfono +34 91 787 39 91</li>
                </ul>
                <h2>Primer curso DAM</h2>
                <ol>
                    <xsl:for-each select="/*/PrimerCursoDAM/Asignatura">
                        <li>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                </ol>
                <h2>Segundo Curso DAM</h2>
                <ul>
                    <xsl:for-each select="/*/SegundoCursoDAM/Asignatura">
                        <li>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                </ul>
                <h2>Contacto</h2>
                <form action="/enviar" method="post">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required="nombre"/><br/>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required="email"/><br/>
                    <label for="mensaje">Mensaje:</label><br/>
                    <textarea id="mensaje" name="mensaje" rows="4" cols="50"></textarea><br/>
                    <input type="submit" value="Enviar"/><br/><br/><br/><br/>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
