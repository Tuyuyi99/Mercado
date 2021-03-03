<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Agregar producto</title>
	</head>
	<body>
	
		<div>
			<h1>Agregar producto</h1>
			
			<a href="Controlador?accion=listar">Volver atrás</a>
			
			<form action="Controlador">
				Nombre: <br>
				<input type="text" name="nombreForm"><br>
				Descripcion: <br>
				<input type="text" name="descripcionForm"><br>
				Precio: <br>
				<input type="text" name="precioForm"><br>
				<input type="submit" name="accion" value="agregar">
				
			</form>
		</div>
	
	</body>
</html>