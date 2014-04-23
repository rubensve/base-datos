<!DOCTYPE html> 
<html>
<head>
<meta charset="utf-8">
<title>CineVeloz S.A. de C.V.</title>
<link href="jquery.mobile-1.0.min.css" rel="stylesheet" type="text/css"/>
<script src="jquery-1.6.4.min.js" type="text/javascript"></script>
<script src="jquery.mobile-1.0.min.js" type="text/javascript"></script>
<script> 
   /*
    $(document).ready(function(e) {
    
	$("#entr").click(function(e) {
            $.ajax({
                url:'autenticar',
                type: 'post',
                data:{
                    nombre:$("#nombre").val(),
                    password:$("#contra").val()
                     },
                success: function(putostodos){
                   //alert(mensaje);
                    location.href = putostodos;
                },
                failure: function(){
                    alert("Error al conectarse con el servidor");
                }
            });
    });
	
});

 */
 
</script>
</head> 
<body> 

<div data-role="page" id="inicio" data-theme="b">
	<div data-role="header">
		<h1>CineVeloz</h1>
	</div>
	<div data-role="content">	
	<div align="center">
    <img src="user.png" width="200" height="200">
    </div>
    </div>
    <div align="center">
        <form action="ServletAutenticar1"  method="post">
	<div data-role="fieldcontain">
	  <label for="textinput">Usuario: &nbsp &nbsp &nbsp </label>
	  <input type="text" name="usuario" id="usuario" value=""  />
  </div>
	<div data-role="fieldcontain">
	  <label for="passwordinput">Contrase�a:   </label>
      <input type="password" name="contra" id="contra" value=""  />
  </div>
  
        <div><input type="submit" value="Entrar" id="entrar" />
           
        </div>
                
   
            
        </form>
        <div >
            <h1>    ${valor} </h1>
        </div>
   </div>
	<div data-role="footer" data-position="fixed">
		<h4>Velozoft </h4>
	</div>
</div>

<div data-role="page" id="pagina2" >
	<div data-role="header">
		<h1>Administracion CineVeloz.</h1>
        <a href="#inicio" data-icon="back" data-iconpos="right">Salir </a>
	</div>
	<div data-role="content">	
		<ul data-role="listview" data-inset="true">
        
        <li><a href="#ventas"> <img src="venta.jpg" width="120" 		height="90" alt="ventas">
        <h2>Ventas </h2> <p> Ventas en Mostrador, <br> 
        Solo Vendedores. </p></a> 
        </li>
        
        <li><a href="#horarios"> 
        <img src="arenita.jpg" width="120" height="90" alt=			 		"horario">
        <h2>Horarios y Salas </h2> 
        <p>Consulta de Horarios y Salas </p>
        </a>
        </li>
        
        <li><a href="#vip"> 
        <img src="vip.jpg" width="120" height="90" alt="vip">
        <h2>Amigos VIP </h2>
        <p>Registro y Consulta de Amigos Vip.<br></p></a>
        </li>
      
        <li><a href="#admon">
        <img src="admin.jpg" width="120" height="90">
        <h2>Administraci�n</h2>
        <p>Alta de Peliculas, Salas, <br> Empleados 
        </p></a> 
        </li>
        </ul>		
	</div>
    
	<div data-role="footer" data-position="fixed">
		<h4>Velozoft</h4>
	</div>
</div>


<div data-role="page" id="admon">
  <div data-role="header">
    <h1>Panel de Administraci�n</h1>
  <a href="#pagina2" data-icon="home" data-iconpos="right">
  Home </a>
  </div>
  <div data-role="content">
  
  <div align="center">
  <img src="admon.png" width="250" height="250" alt="admon"  >
  </div>
  <div align="center">
  <div data-role="fieldcontain">
    <label for="textinput">Clave:</label> <br>
    <input type="text" name="textinput" id="textinput" value=""  />
  </div>
  <div data-role="fieldcontain">
    <label for="passwordinput">Contrase�a:</label><br>
    <input type="password" name="passwordinput" id="passwordinput" value=""  />
  </div>
  <a href="#opcion" data-role="button" data-theme="b">
  Entrar </a>
  </div>
  </div>

  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>


<div data-role="page" id="opcion">
  <div data-role="header">
    <h1>Panel de Administraci�n</h1>
    <a href="#admon" data-icon="back">Salir </a>
  </div>
  <div data-role="content">
  
  <div align="center">
  
  <a href="#altapelis" data-role="button" data-theme="b"> Alta Peliculas </a>
  <br>
  <a href="#altaempleado" data-role="button" data-theme="b"> Alta Empleados </a>
  <br>
  <a href="#actpelis" data-role="button" data-theme="b"> Actualizar Peliculas </a>
  <br>
  <a href="#elimempleado" data-role="button" data-theme="b"> Eliminar Empleados </a>
  </div>
  </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="altapelis">
  <div data-role="header">
    <h1>Alta Peliculas</h1>
    <a href="#opcion" data-icon="back">Volver </a>
  </div>
  <div data-role="content">
    <div align="center">
    <div data-role="fieldcontain">
 <label for="textinput2" >Titulo:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Autor(es):</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Duraci�n:</label><br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    <div data-role="fieldcontain">
      <fieldset data-role="controlgroup">
        <legend>Salas:</legend>
        <input type="checkbox" name="Salas" id="Salas_0" class="custom" value="" />
        <label for="Salas_0">Sala 1</label>
        <input type="checkbox" name="Salas" id="Salas_1" class="custom" value="" />
        <label for="Salas_1">Sala 2</label>
        <input type="checkbox" name="Salas" id="Salas_2" class="custom" value="" />
        <label for="Salas_2">Sala 3</label>
        <input type="checkbox" name="Salas" id="Salas_3" class="custom" value="" />
        <label for="Salas_3">Sala 4</label>
      </fieldset>
    </div>
   
  <a data-role="button" data-theme="b">Registrar </a>
  </div>
  </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="altaempleado">
  <div data-role="header">
    <h1>Alta Empleados</h1>
    <a href="#opcion" data-icon="back">Volver </a>
  </div>
  <div data-role="content">
    <div align="center">
    <div data-role="fieldcontain">
 <label for="textinput2" >Nombre:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Apellido Paterno:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Apellido Materno:</label><br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
      <label for="selectmenu" class="select">Rol:</label>
      <br>
      <select name="selectmenu" id="selectmenu">
        <option value="admin">Administrador</option>
        <option value="vendedor">Vendedor</option>
      </select>
    </div>
<a data-role="button" data-theme="b">Registrar </a>
  </div>
  </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>


<div data-role="page" id="actpelis">
  <div data-role="header">
    <h1>Actualizar Peliculas</h1>
    <a href="#opcion" data-icon="back">Volver </a>
  </div>
  <div data-role="content">
    <div align="center">
    
    
    <div data-role="fieldcontain">
 <label for="textinput2" >ID pelicula:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Titulo:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Autor(es):</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Director:</label><br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    <div data-role="fieldcontain">
      <fieldset data-role="controlgroup">
        <legend>Salas:</legend>
        <input type="checkbox" name="Salas" id="Salas_0" class="custom" value="" />
        <label for="Salas_0">Sala 1</label>
        <input type="checkbox" name="Salas" id="Salas_1" class="custom" value="" />
        <label for="Salas_1">Sala 2</label>
        <input type="checkbox" name="Salas" id="Salas_2" class="custom" value="" />
        <label for="Salas_2">Sala 3</label>
        <input type="checkbox" name="Salas" id="Salas_3" class="custom" value="" />
        <label for="Salas_3">Sala 4</label>
      </fieldset>
    </div>
    </div>
<a data-role="button" data-theme="b">Actualizar </a>
  </div>
  </div>
<div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="elimempleado">
  <div data-role="header">
  <a href="#admon" data-icon="back">Salir </a>
    <h1>Eliminar Empleados</h1>
  </div>
  <div data-role="content">
    <div data-role="fieldcontain">
      <label for="textinput3">ID a Eliminar:</label>
      <input type="text" name="textinput3" id="textinput3" value=""  />
    </div>
    
    <a data-role="button" data-theme="b">Eliminar </a>
    </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="vip">
  <div data-role="header">
    <h1>Amigos VIP</h1>
    <a href="#pagina2" data-icon="back">Home </a>
  </div>
  <div data-role="content">
  <a href="#regvip" data-role="button" data-theme="b">Registro </a><br> <br>
  <a href="#consvip" data-role="button">Consulta </a> 
    </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="regvip">
  <div data-role="header">
    <h1>Registro VIP</h1>
    <a href="#vip" data-icon="back">Volver </a>
  </div>
  <div data-role="content">
    <div align="center">
    <div data-role="fieldcontain">
 <label for="textinput2" >Nombre:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Apellido Paterno:</label> <br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
    <div data-role="fieldcontain">
 <label for="textinput2" >Apellido Materno:</label><br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>
    
        <div data-role="fieldcontain">
 <label for="textinput2" >Puntos:</label><br>
      <input type="text" name="textinput2" id="textinput2" value=""  />
    </div>   

 <a data-role="button" data-theme="b">Registrar </a>
  </div>
  </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="consvip">
  <div data-role="header">
    <h1>Consulta VIP</h1>
    <a href="#vip" data-icon="back">Volver </a>
  </div>
  <div data-role="content">
    <div data-role="fieldcontain">
      <label for="textinput4">Nombre:</label>
      <input type="text" name="textinput4" id="textinput4" value=""  />
    </div>
    
    <div data-role="fieldcontain">
      <label for="textinput4">Apellido Paterno:</label>
      <input type="text" name="textinput4" id="textinput4" value=""  />
    </div>
    
    
    <div data-role="fieldcontain">
      <label for="textinput4">Apellido Materno:</label>
      <input type="text" name="textinput4" id="textinput4" value=""  />
    </div>
    <a href="#" data-role="button" data-icon="gear">Consulta</a>
    
    
  </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

<div data-role="page" id="horarios">
  <div data-role="header">
    <h1>Consulta de Horarios y Salas</h1>
    <a href="#pagina2" data-icon="home"> Home </a>
  </div>
  <div data-role="content">
    <div data-role="fieldcontain">
      <label for="textinput5">Nombre de la pelicula:</label>
      <input type="text" name="textinput5" id="textinput5" value=""  />
    </div>
    
<a href="#" data-role="button" data-icon="gear"> Busqueda </a>
  

  
  
  
  
  </div>
  <div data-role="footer" data-position="fixed">
    <h4>Velozoft</h4>
  </div>
</div>

        
        
        
        
</body>
</html>
