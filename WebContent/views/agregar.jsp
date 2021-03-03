<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Agregar producto</title>
	</head>
	<body>
	
		<h1 class="d-flex justify-content-center">Agregar producto</h1>
		<a class="btn btn-outline-warning mb-3 d-flex justify-content-center" href="Controlador?accion=listar">Volver atrás</a>
		<div class="row w-100 m-0 d-flex justify-content-center">
			<form action="Controlador">
				<div class="input-group mb-1">
				  <span class="input-group-text">Nombre</span>
				  	<input type="text" class="form-control" name="nombreForm"><br>
				</div>
				<div class="input-group mb-1">
				  <span class="input-group-text">Descripción</span>
					<input class="form-control" type="text" name="descripcionForm"><br>
				</div>
				<div class="input-group mb-1">
				  <span class="input-group-text">Precio</span>
					<input class="form-control" type="text" name="precioForm"><br>
				</div>
				<input type="submit" class="btn btn-outline-success" name="accion" value="Agregar">
			</form>
		</div>										
	</body>
</html>