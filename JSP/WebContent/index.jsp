<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%------------------------------------------declaracion --%>

	<%!String nombreDeclaracion = "edgar"; %>

	<%----------------------------------------------scriptel --%>
	<%
		String cadena = "soy un cadena en un jsp";
	%>
	<br>
	<%
		out.print(cadena);
	%>
	<br>

	<%-------------------------------expresion --%>
	<%=cadena%>

	<%
		if (cadena.equals("hola")) {
			out.print("soy un hola");
		} else {
			out.print("no soy una cadena con hola");
		}
	%>


	<%
		application.setAttribute("llave", "valor de la llave uno");
	%>

	<br>
	<a href="display.jsp">click aqui</a>

	<%!String nombre = "edgar";
	int edad = 99;%><%--declaracion --%>
	<br>
	<%="el nombre es:" + nombre%><br>
	<%="la edad es :" + edad%>

</body>
</html>