<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="models.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Modificar producto</title>
	</head>
	<body>
			<%
			
				ProductoDAO dao = new ProductoDAO();
				int id = Integer.parseInt((String)request.getAttribute("idpro"));
				Producto p = (Producto)dao.list(id);
			%>
		
		
			<h1 class="d-flex justify-content-center">Modificar producto</h1>
			
			<a class="btn btn-outline-warning mb-3 d-flex justify-content-center" href="Controlador?accion=listar">Volver atrás</a>
			<div class="row w-100 m-0 d-flex justify-content-center">
			<form action="Controlador">
				<div class="input-group mb-1">
				  <span class="input-group-text">Nombre</span>
				<input type="text" class="form-control" name="nombreForm" value="<%= p.getNombre() %>"><br>
				</div>
				<div class="input-group mb-1">
				  <span class="input-group-text">Descripcion</span>
				<input type="text" class="form-control" name="descripcionForm" value="<%= p.getDescripcion() %>"><br>
				</div>
				<div class="input-group mb-1">
				  <span class="input-group-text">Precio</span>
				<input type="text" class="form-control" name="precioForm" value="<%= p.getPrecio() %>"><br>
				</div>
				<input type="hidden" name="txtid" value="<%= p.getId() %>">
				<input type="submit" class="btn btn-outline-success" name="accion" value="Actualizar">
				
			</form>
		</div>
	
	</body>
</html>