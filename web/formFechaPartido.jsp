<%-- 
    Document   : fechaPartido
    Created on : 15/06/2019, 03:33:07 PM
    Author     : Jose David Ballesteros
--%>

<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar fecha de encuentros</title>
    </head>
    <body>
        <div id="principal">
            <div class="nav navbar-dark bg-dark">
                <div class="container">
                    <h1 class="navbar-brand">Torneo intermunicipal de futbol</h1>
                </div>     
            </div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <ul  class="nav nav-tabs">
                    <li class="nav-item active"><a class="nav-link" href="registrarEquipo.jsp">Gestionar equipo</a></li>
                    <li class="nav-item active"><a class="nav-link" href="registrarJugador.jsp">Gestionar jugador</a></li>
                    <li class="nav-item active"><a class="nav-link" href="registrarEstadistica.jsp">Gestionar Estadisticas</a></li>  
                    <li class="nav-item active"><a class="nav-link" href="ConsultarEquipo.jsp">Consultar equipo</a></li>
                    <li class="nav-item active"><a class="nav-link" href="ConsultarJugador.jsp">Consultar jugador</a></li>                    
                    <li class="nav-item active"><a class="nav-link" href="ConsultarEstadistica.jsp">Consultar estadisticas</a></li>
                    <li class="nav-item active"><a class="nav-link" href="formFechaPartido.jsp">Generar programacion</a></li>
                </ul>
            </nav>
        </div>
        <%
            Connection con;
            String url = "jdbc:mysql://localhost:3306/futbol";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String pass = "";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, pass);
            PreparedStatement ps;
            PreparedStatement ps1;
            ResultSet rs;
            ResultSet rs1;
            ps = con.prepareStatement("SELECT idEquipo,nombre FROM equipo");
            rs = ps.executeQuery();
            ps1 = con.prepareStatement("SELECT idEquipo,nombre FROM equipo");
            rs1 = ps1.executeQuery();
        %>


        <div class="container p-4">
            <form action="agregarPartido.jsp" method="POST"> 

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Equipo Local</label>
                        <select class="form-control" name="local">
                            <option value="0">Seleccione un equipo</option>
                            <%
                                while (rs.next()) {
                                    //equipoUno.add(rs.getString("nombre")); 
                                    //equipoId.add(rs.getInt("idEquipo"));
                                    out.println("<option value='" + rs.getString("nombre") + "'>" + rs.getString("nombre") + "</option>");
                                }
                            %>

                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label>Equipo Visitante</label>
                        <select class="form-control" name="visitante">
                            <option value="0">Seleccione un equipo</option>
                            <%
                                while (rs1.next()) {
                                    //equipoUno.add(rs.getString("nombre")); 
                                    //equipoId.add(rs.getInt("idEquipo"));
                                    out.println("<option value='" + rs1.getString("nombre") + "'>" + rs1.getString("nombre") + "</option>");
                                }
                            %>
                        </select> 
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Lugar del partido</label>
                        <input type="text" class="form-control" name="lugarPartido" placeholder="Lugar del partido">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Fecha del partido</label>
                        <input type="datetime-local" class="form-control" name="fechaPartido">
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-success " value="Agregar">
                </div>
            </form> 

            <form action="listarPartido.jsp" method="POST">
                <input type="submit" class="btn btn-success " value="Listar Partidos">
            </form>
        </div>



    </body>
</html>
