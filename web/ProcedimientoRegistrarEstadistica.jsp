<%-- 
    Document   : ProcedimientoRegistrarEstadistica
    Created on : 16/06/2019, 08:52:23 PM
    Author     : KOGARASUMARU
--%>

<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
<%@page import="java.sql.PreparedStatement"%>
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
            PreparedStatement sentenciaPreparada = SentenciaPreparada.getProcedimientoInsetarEstadisticas();
            sentenciaPreparada.setInt(1, 1);
            sentenciaPreparada.setInt(2,(Integer.parseInt(request.getParameter("codigo"))));
            sentenciaPreparada.setInt(3,(Integer.parseInt(request.getParameter("golesFavor"))));
            sentenciaPreparada.setInt(4,(Integer.parseInt(request.getParameter("golesContra"))));
            sentenciaPreparada.setInt(5,(Integer.parseInt(request.getParameter("pJugados"))));
            sentenciaPreparada.setInt(6,(Integer.parseInt(request.getParameter("pEmpate"))));
            sentenciaPreparada.setInt(7,(Integer.parseInt(request.getParameter("pGanados"))));
            sentenciaPreparada.execute();
            response.sendRedirect("index.html");
        %>
    </body>
</html>
