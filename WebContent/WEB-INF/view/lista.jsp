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
<h1>AGENDA - Lista de contactos</h1>

	<a href="addcontacto">Añadir Contacto.</a>
	<table>
		<tr>
			<td>Id</td>
			<td>Nombre</td>
			<td>Email</td>
			<td>Teléfono</td>
		</tr>
		
		<c:forEach var="contacto" items="${contacto}">
			<c:url var="linkEditar" value="/contacto/updatecontacto">
				<c:param name="idcontacto" value="${contacto.idcontacto }" />
			</c:url>
			<c:url var="linkBorrar" value="/contacto/deletecontacto">
				<c:param name="idcontacto" value="${contacto.idcontacto }" />
			</c:url>
		<tr>
			<td>${contacto.idcontacto }</td>
			<td>${contacto.nombre }</td>
			<td>${contacto.email }</td>
			<td>${contacto.telefono }</td>
			<td><a href="${linkEditar }">Editar</a>
			<a href="${linkBorrar }" onclick="if(!confirm('¿Estáseguro?')) return false">Borrar</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>