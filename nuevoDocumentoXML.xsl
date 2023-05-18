<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">



    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <ite nombre="Instituto Tecnológico Edix" web="https://institutotecnologico.edix.com">
            <xsl:attribute name="telefono"><xsl:value-of select="ite/telefono"/></xsl:attribute>
            <xsl:attribute name="empresa"><xsl:value-of select="ite/empresa"/></xsl:attribute>
            <equipo>
                <director>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/director/nombre" />
                        </xsl:attribute>
                    <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/director/despacho" />
                    </xsl:attribute>               
        </director>
        <jefe_estu>

            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/jefe_estudios/nombre" />
                </xsl:attribute>
            <xsl:attribute name="despacho">
            <xsl:value-of select="ite/jefe_estudios/despacho" />
            </xsl:attribute>
        </jefe_estu>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id" />
                        </xsl:attribute>
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="nombre" />
                        </xsl:attribute>
                    </profesor>
                </xsl:for-each>
            </profesores>
        </equipo>
        <ciclos>
            <xsl:for-each select="ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="nombre"><xsl:value-of select="nombre" /></xsl:attribute>
                    <xsl:attribute name="grado"><xsl:value-of select="grado" /></xsl:attribute>
                    <xsl:attribute name="decreto"><xsl:value-of select="decretoTitulo/@año" /></xsl:attribute>
                    <xsl:value-of select="@id" />
                </ciclo>
        </xsl:for-each>
        </ciclos>
        </ite>
    </xsl:template>
</xsl:stylesheet>