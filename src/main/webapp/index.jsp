<%@page import="com.emergentes.SegundoParcial.producto"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("lista")==null){
        ArrayList<producto> lisaux = new ArrayList<producto>();
        session.setAttribute("lista",lisaux);
    }
    ArrayList<producto>listas = (ArrayList<producto>)session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <table border="7">
            <tr>
                <th>SEGUNDO PARCIAL TEM-742<br>Nombre: Julia Mamani Mollerico<br>Carnet: 13960445</th>
            </tr>
        </table>
            <h1>PRODUCTOS</h1>
        </center>
            <div align="rigth"><a href="Mainservlet?op=nuevo">Nuevo Producto</a></div>
        <center>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if(listas!=null){
                    for (producto l: listas){
            %>
            <tr>
                <td><%= l.getId() %></td>
                <td><%= l.getDescripcion()%></td>
                <td><%= l.getCantidad()%></td>
                <td><%= l.getPrecio()%></td>
                <td><%= l.getCategoria()%></td>
                <td><a href="Mainservlet?op=editar&id=<%=l.getId()%>">Editar</a></td>
                <td><a href="Mainservlet?op=eliminar&id=<%=l.getId()%> ">Eliminar</a></td>
            </tr>
            <%        
                }
                
                }
            %>
        </table>
        </center>
    </body>
</html>
