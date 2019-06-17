<%-- 
    Document   : agregarPartido
    Created on : 16/06/2019, 06:44:06 PM
    Author     : Jose David Ballesteros
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
<%@page import="edu.CECAR.persistencia.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            ConexionMySQL conexionMySQL = new ConexionMySQL();
            PreparedStatement sentenciaPreparada = SentenciaPreparada.getInsertarPartido();
            sentenciaPreparada.setString(1, null);
            sentenciaPreparada.setString(2, request.getParameter("local"));
            sentenciaPreparada.setString(3, request.getParameter("visitante"));
            sentenciaPreparada.setString(4, request.getParameter("lugarPartido"));
            sentenciaPreparada.setString(5, request.getParameter("fechaPartido"));
            sentenciaPreparada.execute();
            response.sendRedirect("formFechaPartido.jsp");
            
        %>
    </body>
</html>
