<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado del Formulario</title>
</head>
<body>
	<h1>Resultado del Formulario</h1>
	<p>Aquí se muestran los datos enviados:</p>

	<p>Nombre: ${nombre}</p>
	<p>Apellidos: ${apellidos}</p>
	<p>Correo: ${correo}</p>
	<p>Género: ${genero}</p>

	<p>Habilidades de programación:</p>
	<ul>
		<c:forEach var="habilidad" items="${habilidades}">
			<li>${habilidad}</li>
		</c:forEach>
	</ul>

	<p>Idiomas que comprendes:</p>
	<ul>
		<c:forEach var="idioma" items="${idiomas}">
			<li>${idioma}</li>
		</c:forEach>

	</ul>

	<p>Comentarios adicionales: ${comentario}</p>
</body>
</html>
