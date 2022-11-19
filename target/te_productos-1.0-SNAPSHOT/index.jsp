<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
  List<Producto> lista=(List<Producto>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> <body>
        <h1>Listado de productos</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>PRODUCTO</td>
                <td>PRECIO</td>
                <td>CANTIDAD</td>
                <td>MODIFICAR</td>
                <td>ELIMINAR</td>  </tr>
            <c:forEach var="item" items="${lista}">
              <tr>
                <td>${item.id}</td>
                <td>${item.producto}</td>
                <td>${item.precio}</td>
                <td>${item.cantidad}</td>
                <td><a href="MainController?op=editar&id=${item.id}">MODIFICAR</a></td>
                <td>
                    <a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro?')) ">ElIMINAR</a>
        </td>
            </tr>        </c:forEach>                 
        </table>  </body></html>

