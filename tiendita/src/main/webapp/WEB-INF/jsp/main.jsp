<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido</title>
</head>
<body>
	<img src="imagenes/tienda.jpg" alt="tienda" style="width:1500px;height:228px;" align ="middle">
	<h1 style="text-align:center;color:red;font-size:300%" style="color:blue;">Galletas</h1>
<form:form modelAttribute="orden" method="post" action="result.html">
	<table style="width:100%">
	  <tr>
	    <th>Imagen</th>
	    <th>Descripción</th> 
	    <th>Precio</th> 
	    <th>cantidad</th>
	  </tr>
	  <tr>
	    <td align="center"><img alt="Chips" src="imagenes/chips.jpg"style="width:50px;height:50px;"></td>
	    <td align="center">CHIPS AHOY 500 gr</td> 
	    <td align="center">$40</td>	
	    <td align="center"><form:input path="lista[0].cantidad"/></td>
	  </tr>
	  <tr>
	    <td align="center"><img alt="giro" src="imagenes/giro.jpg"style="width:50px;height:50px;"></td>
	    <td align="center">Giro 500 gr</td> 
	    <td align="center">$35</td>
	    <td align="center"><form:input path="lista[1].cantidad"/></td>
	  </tr>
	    <tr>
	    <td align="center"><img alt="oreo" src="imagenes/oreo.jpg"style="width:50px;height:50px;"></td>
	    <td align="center">Oreo 500 gr</td> 
	    <td align="center">$45</td>
	    <td align="center"><form:input path="lista[2].cantidad"/></td>
	  </tr>
	</table>
	<input type="submit" value="Ordenar"/>
</form:form>
</body>
</html>