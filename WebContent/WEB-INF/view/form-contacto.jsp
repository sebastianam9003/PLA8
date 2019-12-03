<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacto</title>
</head>
<body>
	<h1>Contacto</h1>

	<form:form action="savecontacto" modelAttribute="contacto" method="post">
	<form:hidden  path="idcontacto" />
		<p>
			Nombre:
			<form:input path="nombre" />
		</p>
		<p>
			Email:
			<form:input path="email"></form:input>
		</p>
		<p>
			Teléfono:
			<form:input  path="telefono"></form:input>
		</p>
		<input type="submit" value="Guardar"/>
		<a href="${pageContext.request.contextPath}/contacto/lista">Lista de contactos</a>
	</form:form>
</body>
</html>