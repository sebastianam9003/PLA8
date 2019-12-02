<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglibprefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglibprefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de contactos</title>
</head>
<body>
<h1>Lista de tareas</h1>

	<table>
		<tr>
			<td>Id</td>
			<td>Nombre</td>
			<td>Email</td>
			<td>Teléfono</td>
		</tr>
		
		<c:forEach var="contacto" items="${contacto}">
		<tr>
			<td>${contacto.idcontacto }</td>
			<td>${contacto.nombre }</td>
			<td>${contacto.email }</td>
			<td>${contacto.telefono }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>