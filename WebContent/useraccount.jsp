<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="kachuelitos.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mi cuenta</title>

<link rel="stylesheet" href="styles/tab.css" type="text/css"
	media="screen" title="no title" charset="utf-8">

<link rel="stylesheet" href="styles/page.css" type="text/css"
	media="screen" title="no title" charset="utf-8">
</head>
<body>
	<div id='header'>
		<img id='logo' src='images/logo.jpg' width='250px' />
		<form action='actionLogOut' method='post'>

<%

%>
			<div id='buttonTop'>
				Bienvenido <s:property value="" /><s:property value="user.lasname" />	
				<button>Cerrar Sesion</button>
			</div>
		</form>
	</div>


	<div id='tabContainer'>
		<ul id='topTab'>
			<li><a href='useraccount.jsp' title='Home'
				class='current'>Mi Cuenta</a></li>
			<li><a href='userworks.jsp' title='Home'>Mis
					Trabajos</a></li>
			<li><a href='usercv.jsp' title='Home' class='current'>Mi
					CV</a></li>
		</ul>
	</div>
	<div id='content'>
		<p>
			
		</p>
	</div>
	<footer>
	<div align='center'>
		<hr width='50%'></hr>
		<p>Derechos Reserv@dos 101 Kachuelitos 2014</p>
	</div>
	</footer>
</body>
</html>