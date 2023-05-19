 <?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
   
<html>
<head>
  
  <title>Empresa Proeduca</title>
</head>
<body>
  <h1>Empresa Proeduca</h1>
  
  
<director>
        <nombre attribute name=nombre>Chon</nombre>
        <despacho attribute name=Edifico>Numero 31, 3ª Planta, Edificio A</despacho>
    </director>
    <jefe_estudios>
        <nombrea attribute name=nombre>Dani</nombre>
        <despacho attribute name=Edificio>Numero 27, 2ª Planta, Edificio B</despacho>
    </jefe_estudios>
    <xsl: choose>
  <xsl:when test= "Despacho/Edificio" ="A">  
  <h4> En el edificio A está el despacho del director</h4>
  <xsl:when  test= "Despacho/Edificio" = "B">
 <h4>En el edificio B está el despacho del jefe de estudios</h4>
  </xsl:when>
  <xsl:otherwise> No existe ese edificio</xsl:otherwise>
  </xsl:choose>

 

  <h2><xsl: value-of select="Profesores/Modulos"/> Profesores</h2>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Modulos</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Félix</td>
        <td>Entornos de desarollo</td>

      </tr>
      <tr>
        <td>2</td>
        <td>Raúl</td>
        <td>Bases de datos</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Raquel</td>
        <td>Sistemas</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Tomás</td>
        <td>Programacion</td>
      </tr>
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
    </xsl:for-each select="Ciclos/Grado"
      <tr>
        <td >ASIR</td>
        <td xsl:attribute name="nombre" xsl: value-of select="Ciclos/Grado" >Administración de Sistemas Informáticos en Red</td>
        <td>Superior</td>
        <td>2009</td>
      </tr>
      <tr>
        <td>DAW</td>
        <td xsl:attribute name="nombre" xsl: value-of select="Ciclos/Grado" >Desarrollo de Aplicaciones Web</td>
        <td>Superior</td>
        <td>2010</td>
      </tr>
      <tr>
        <td>DAM</td>
        <td xsl:attribute name="nombre" xsl: value-of select="Ciclos/Grado" >Desarrollo de Aplicaciones Multiplataforma</td>
        <td>Superior</td>
        <td>2010</td>
      </tr>
    </tbody>
  </table>

  <h2>Contacto</h2>
  <ul>
    <li>Instituto Tecnológico Edix<a href="https://institutotecnologico.edix.com">Enlace 1</a></li>
    <li>Teléfono +34 91 787 39 91</li>
  </ul>

  <h2 >Modulos Primer curso DAM</h2>
  <ol>
    <li>FOL</li>
    <li>Programacion</li>
    <li>Base de datos</li>
    <li>Entornos de desarrollo</li>
    <li>Lenguaje de Marcas</li>
    <li>Sistemas</li>
  </ol>

  <h2>Modulos Segundo Curso DAM</h2>
  <ul>
    <li>Desarrollo de Interfaces</li>
    <li>Programación de Servicios y Procesos</li>
    <li>Sistemas de Gestión Empresarial</li>
    <li>Inglés técnico para Grado Superior</li> 
    <li>Acceso a Datos </li>
    <li> Programación Multimedia y Dispositivos Móviles   </li>
    <li>EIE</li>
    <li>Desarrollo de Software y Operaciones con Metodología DevOps</li>
    <li>Proyecto de Desarrollo de Aplicaciones Multiplataforma </li>
    <li>Formación en Centros de Trabajo</li>
  </ul>

</body>
</html>

    
    
    
    
    
    
    
    
    </xsl:template>
</xsl:stylesheet>
