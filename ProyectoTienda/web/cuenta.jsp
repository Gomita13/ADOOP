<%-- 
    Document   : cuenta
    Created on : 2/04/2020, 03:47:28 PM
    Author     : saulg
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Producto"%>
<%@page import="Database.Sentencias"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="Database.Conexion"%>

<%
    //COMPROBAMOS QUE NO EXISTA UNA SESIÓN INICIADA PREVIAMENTE    
    HttpSession sesionOK = request.getSession();   
    String username = "";
    String priv = "";
    String msj = "";
    ArrayList<Producto> Carrito = new ArrayList<Producto>();
    int[][] Cantidad = new int[100][2];
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuenta</title>
        <!--Scripts-->
        <!--CSS-->
        <link rel="stylesheet" type="text/css" href="CSS/cuenta.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <div id="contenedor">
            <header id="con-header">
                <p><h3>Perfil</h3></p>
                <p>Puedes modificar los datos de tu cuenta</p>
            </header>
            <div id="con-info">
                <span>Información básica:</span>
                <p><input type="text" name="nombre" readonly value="Saúl"></p>
                <p>
                    <input type="text" name="ap" id="readonly" readonly value="García">
                    <input type="text" name="am" id="readonly" readonly value="Medina">
                </p><hr>
                <form id="info-basica">
                    <span>Personal</span>
                    <p><input type="text" name="calle" id="calle" value="Gabriela"></p>
                    <p><input type="text" name="col" id="col" value="Villa Centroamericana"></p>
                    <p><input type="text" name="alc" id="alc" value="Tláhuac"></p>
                    <p><input type="number" name="cp" id="cp" value="13278"></p>
                    <p><input type="text" name="ciudad" id="ciudad" value="CDMX"></p>
                    <p><input type="number" name="tel" id="tel" value="5539623586"></p>  
                    <p><input type="submit" name="Guardar" id="guardar" value="Guardar"></p>
                    <div class="clearfix"></div><hr>
                </form>
                <form id="info-password">
                    <span>Contraseña</span>
                    <p><input type="password" name="pass" id="pass"></p>
                    <span>Contraseña nueva</span>
                    <p><input type="password" name="new-pass" id="new-pass"></p>
                    <input type="submit" name="Guardar" id="guardar" value="Guardar">
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </body>
</html>