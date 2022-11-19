<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto prod=(Producto)request.getAttribute("prod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1><%= (prod.getId() == 0) ? "Nuevo Registro" : "Editar Registro "%></h1>

        <form action="MainController" method="post">
            <table>
               <input type="hidden" name="id" value="${prod.id}"> 
                <tr>
                    <td>PRODUCTO</td>
                    <td><input type="text" name="producto" value="${prod.producto}"></td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td><input type="text" name="precio" value="${prod.precio}"></td>
                </tr>
                <tr>
                    <td>CATEGORIA</td>
                    <td><input type="text" name="cantidad" value="${prod.cantidad}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>     </form></body>
</html>
