<%-- 
    Document   : procedimientoRegistrarEquipo
    Created on : 28/05/2019, 11:25:42 PM
    Author     : Jose David Ballesteros
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
<%@page import="edu.CECAR.logica.Equipo"%>
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
            PreparedStatement sentenciaPreparada = SentenciaPreparada.getProcedimientoInsertarEquipo();
            sentenciaPreparada.setInt(1,1);
            sentenciaPreparada.setInt(2, (Integer.parseInt(request.getParameter("codigo"))));
            sentenciaPreparada.setString(3, request.getParameter("nombreEquipo"));
            sentenciaPreparada.setString(4, request.getParameter("nombreEntrenador"));
            sentenciaPreparada.execute();
            response.sendRedirect("index.html"); 
        %>
    </body>
</html>
