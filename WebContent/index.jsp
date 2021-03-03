<%@page import="java.util.Iterator"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="models.Producto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<title>Productos</title>
	</head>
	<body>
		<div>
			<h1>Productos</h1>
			<table border="1" class="table table-striped table-hover">
				<thead class="table thead-dark">
					<tr>
						<th scope="col">Nombre</th>
						<th scope="col">Descripcion</th>
						<th scope="col">Precio</th>
						<th scope="col"></th>
						<th scope="col"></th>
					</tr>
				</thead>
				<%
				
					ProductoDAO dao = new ProductoDAO();
					List<Producto>list = dao.listar();
					Iterator<Producto>iter = list.iterator();
					Producto pro = null;
					
					while (iter.hasNext()){
						pro = iter.next();
					
				%>
				<tbody class="table-striped">
					<tr>
						<td scope="row"><%= pro.getNombre() %></td>
						<td scope="row"><%= pro.getDescripcion() %></td>
						<td scope="row"><%= pro.getPrecio() %></td>
						<td scope="row"><a class="btn btn-outline-info btn-block" href="Controlador?accion=editar&id=<%= pro.getId() %>">Editar</a></td>
						<td scope="row"><a class="btn btn-outline-danger btn-block" href="Controlador?accion=eliminar&id=<%= pro.getId() %>">Eliminar</a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>		
		<a class="btn btn-outline-success btn-xs" href="Controlador?accion=add">Agregar nuevo producto</a><br>
		</div>
	</body>
</html>