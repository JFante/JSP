<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-latest.js">
	
</script>
<script>
	$(document).ready(function() {
	 	$('#btnSubmit').click(function(event) {
			//Declaracion de variables para cada valor del input
			var nombreJQuery = $('#nombreJsp').val();
			var apellidoJQuery = $('#apellidoJsp').val();
			var edadJQuery = $('#edadJsp').val();
			console.log(nombreJQuery);
			debugger;
			//aqui se hace el llamado al servlet por el metodo post, se genera un json  con los valores de la foma
			$.post('ServletAjax', {
				llave1 : nombreJQuery,
				llave2 : apellidoJQuery,
				llave3 : edadJQuery},
				function(responseText) {
				$('#tablaDinamica').html(responseText);
			});

		}); 
	/* 
		$('#btnSubmit').click(function() {
				debugger;
				$.ajax({
					url : 'ServletAjax',
					data : {
						llave1 : $('#nombreJsp').val(),
						llave2 : $('#apellidoJsp').val(),
						llave3 : $('#edadJsp').val()
					},
					success : function(responseText) {
						$('#tablaDinamica').html(responseText);
					}
				});
			});
		*/

	});
</script>

</head>
<body>

	<form id="form1" method="POST">

		Nombre   <input  type="text" id="nombreJsp"  />  <br>
		Apellido <input  type="text" id="apellidoJsp" /> <br>
		Edad     <input  type="text" id="edadJsp"  />  <br> 
				 <input	 type="submit" id="btnSubmit" value="Agregar" />
		 
	<br>
	
	<!-- 	En este div metemos el contenido de la tabla con AJAX -->
	<div id="tablaDinamica">
	</div>

	</form>


</body>
</html>