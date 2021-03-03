<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="models.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Modificar producto</title>
	</head>
	<body>
	
		<div>
			<%
			
				ProductoDAO dao = new ProductoDAO();
				int id = Integer.parseInt((String)request.getAttribute("idpro"));
				Producto p = (Producto)dao.list(id);
			%>
		
		
			<h1>Modificar producto</h1>
			
			<a href="Controlador?accion=listar">Volver atrás</a>
			
			<form action="Controlador">
				Nombre: <br>
				<input type="text" name="nombreForm" value="<%= p.getNombre() %>"><br>
				Descripcion: <br>
				<input type="text" name="descripcionForm" value="<%= p.getDescripcion() %>"><br>
				Precio: <br>
				<input type="text" name="precioForm" value="<%= p.getPrecio() %>"><br>
				<input type="hidden" name="txtid" value="<%= p.getId() %>">
				<input type="submit" name="accion" value="actualizar">
				
			</form>
		</div>
	
	</body>
</html>