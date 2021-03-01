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
	<title>Insert title here</title>
	</head>
	<body>
		<div>
			<h1>Productos</h1>
			<table border="1">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Descripcion</th>
						<th>Precio</th>
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
				<tbody>
					<tr>
						<td><%= pro.getNombre() %></td>
						<td><%= pro.getDescripcion() %></td>
						<td><%= pro.getPrecio() %></td>
						<td><a>Editar</a></td>
						<td><a>Eliminar</a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</body>
</html>