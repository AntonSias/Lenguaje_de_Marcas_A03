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
      <tr>
        <td>1</td>
        <td>Félix</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Raúl</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Raquel</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Tomás</td>
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
      <tr>
        <td>ASIR</td>
        <td>Administración de Sistemas Informáticos en Red</td>
        <td>Superior</td>
        <td>2009</td>
      </tr>
      <tr>
        <td>DAW</td>
        <td>Desarrollo de Aplicaciones Web</td>
        <td>Superior</td>
        <td>2010</td>
      </tr>
      <tr>
        <td>DAM</td>
        <td>Desarrollo de Aplicaciones Multiplataforma</td>
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

  <h2>Primer curso DAM</h2>
  <ol>
    <li>FOL</li>
    <li>Programacion</li>
    <li>Base de datos</li>
    <li>Entornos de desarrollo</li>
    <li>Lenguaje de Marcas</li>
    <li>Sistemas</li>
  </ol>

  <h2>Segundo Curso DAM</h2>
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

   <h2>Contacto</h2>
  <form action="/enviar" method="post">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required="nombre"/><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required="email"/><br>

    <label for="mensaje">Mensaje:</label><br>
    <textarea id="mensaje" name="mensaje" rows="4" cols="50" /><br>

    <input type="submit" value="Enviar"/>/</br></br></br></br>
   
  </form>
</body>
</html>

    
    
    
    
    
    
    
    
    </xsl:template>
</xsl:stylesheet>
