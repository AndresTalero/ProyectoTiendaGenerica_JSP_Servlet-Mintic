<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuarios</title>
<link rel="stylesheet" href="css/estiloOpciones2.css">
</head>
<body>

<%!String cedulaUsuario = "", emailUsuario = "", nombreUsuario = "", clave = "", usuario = "",  estado = "";%>

<%
if (request.getParameter("cedulaUsuario") != null) {
	cedulaUsuario = request.getParameter("cedulaUsuario");
	emailUsuario = request.getParameter("emailUsuario");
	nombreUsuario = request.getParameter("nombreUsuario");		
	clave = request.getParameter("clave");
	usuario = request.getParameter("usuario");
	if(cedulaUsuario == "") {
		estado = "enabled";
	}
	else{
		estado = "disabled";
	}
}
%>

<div class="titulo">
	<h1>Tienda Gen�rica</h1>
</div>
<header>
	<nav>
		<ul>				
			<li><a href="Usuarios.jsp">Usuarios</a></li>
			<li><a href="Clientes.jsp">Clientes</a></li>
			<li><a href="Proveedores.jsp">Proveedores</a></li>
			<li><a href="Productos.jsp">Productos</a></li>
			<li><a href="Ventas.jsp">Ventas</a></li>
			<li><a href="Reportes.jsp">Reportes</a></li>
			<li><a href="index.jsp">Cerrar sesi�n</a></li>
		</ul>
	</nav>
</header>

<div class="contendor-fluid">
	<form action="Usuarios" method="post">
		<div class="titulo">
			<h3>Usuarios</h3>
		</div>
		<div class="contenedorIN">
			<div>
				<label for="">C�dula</label>
				<label for="">Nombre Completo</label>
				<label for="">Correo Electr�nico</label>
			</div>
			<div>
				<input type="text" name="cedulaUsuario" value="<%=cedulaUsuario%>" <%=estado%> required>
				<input type="hidden" name="cedUsuario" value="<%=cedulaUsuario%>"> 
				<input type="text" name="nombreUsuario" value="<%=nombreUsuario%>"> 
				<input type="email" name="emailUsuario" value="<%=emailUsuario%>">
			</div>
			<div>
				<label for="">Usuario</label> 
				<label for="">Contrase�a</label>
			</div>
			<div>
				<input type="text" name="usuario" value="<%=usuario%>"> 
				<input type="password" name="clave" value="<%=clave%>">
			</div>
		</div>
		<div class="contenedorBotones">
			<input type="submit" name="consultar" value="Consultar">
			<input type="submit" name="insertar" value="Crear"> 
			<input type="submit" name="actualizar" value="Actualizar"> 
			<input	type="submit" name="eliminar" value="Borrar">
			<input type="submit" name="limpiar" value="Limpiar">
		</div>
	</form>
</div>
	
<%
if (request.getParameter("men") != null) {
	String mensaje = request.getParameter("men");
	out.print("<script>alert('" + mensaje + "');</script>");
}
%>

</body>
</html>