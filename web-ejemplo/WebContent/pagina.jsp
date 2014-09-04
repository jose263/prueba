<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Un ejemplo de JSP para la calculadora</title>
</head>
<body>
	<h1>Formulario</h1>
	<p>Introduce los datos y pulsa una operacion</p>
	<table width="100%" border="1">
		<tr>
			<td>
				<form action="./calculadora">
					Indica el operando 1: 
					<input name="op1" value = "${param.op1}"/> 
					<br /> 
					Indica el operando 2: 
					<input name="op2" value = "${param.op2}"/> 
					<br /> <br /> 
				
					<br /> <br /> 
					<input name= "op" value ="sumar" type="submit" />
					<input name= "op" value ="restar" type="submit" />
					<input name= "op" value ="multiplicar" type="submit" />
					<input name= "op" value ="dividir" type="submit" />
					<br/>
					O seleciona del menú desplegable:
					<br/>
					<select name ="op">
						<option value="sumar" ${param.op=="sumar" ? "selected" : ""}>Sumar</option>
						<option value="restar" ${param.op=="restar" ? "selected" : ""}>Restar</option>
						<option value="multiplicar" ${param.op=="multiplicar" ? "selected" : ""}>Multiplicar</option>
						<option value="dividir" ${param.op=="dividir" ? "selected" : ""}>Dividir</option>
					</select>
					<br/>
					<input type="submit" value="Calcular"/>
					<br/>
				</form>
			</td>
			<td><img alt="Mafalda"
				src="C:\Documents and Settings\insa01\Escritorio\Mafalda.JPEG" /></td>
		</tr>
	</table>
	<h1>Resultado</h1>
	<p>En esta pagina se muestra el resultado de aplicar una operacion
		a traves del servlet de ejemplo que hemos creado</p>
<!-- 	<h2>Datos de entrada</h2> -->
<!-- 	<p> -->
<!-- 		los datos de entrada son: <br /> -->
<!-- 	<ul> -->
<%-- 		<li>Operando 1: ${param.op1 }</li> --%>
<%-- 		<li>Operando 2: ${param.op2 }</li> --%>
<%-- 		<li>Operacion: ${param.op }</li> --%>
<!-- 	</ul> -->
<!-- 	</p> -->
	<h2>Resultados</h2>
	<p>el resultado de la operacion es ${r}</p>
</body>
</html>