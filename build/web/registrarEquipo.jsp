<%-- 
    Document   : registrarEquipo
    Created on : 28/05/2019, 10:53:59 PM
    Author     : Jose David Ballesteros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Equipo</title>
    </head>
    <body>
        <div id="principal">
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

            <form action="ProcedimientoRegistrarEquipo.jsp" method="post" style="width: 700px; margin: 0 auto;">
                <label>Codigo del equipo</label>
                <input type="text" class="form-control" name="codigo" placeholder="Codigo del equipo">
                <label>Nombre del equipo</label>
                <input type="text" class="form-control" name="nombreEquipo" placeholder="Nombre del equipo">
                <label>Nombre del entrenador</label>
                <input type="text" class="form-control" name="nombreEntrenador" placeholder="Nombre del entrenador"><br>
                <input type="submit" class="btn btn-primary" value="Registrar">
                <input type="reset" class="btn btn-danger" value="Eliminar">
            </form>
    </body>
</html>
