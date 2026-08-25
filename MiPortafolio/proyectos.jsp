<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.portafolio.Conexion" %>


<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Mi Portafolio | Proyectos</title>


    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <link rel="stylesheet"
          href="css/estilos.css">

</head>


<body>


<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <div class="container">

        <a class="navbar-brand"
           href="index.jsp">

            MI PORTAFOLIO

        </a>


        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#menu">

            <span class="navbar-toggler-icon"></span>

        </button>


        <div class="collapse navbar-collapse"
             id="menu">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link"
                       href="index.jsp">
                        Inicio
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="proyectos.jsp">
                        Proyectos
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="habilidades.jsp">
                        Habilidades
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="experiencia.jsp">
                        Experiencia
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="contacto.jsp">
                        Contacto
                    </a>
                </li>

            </ul>

        </div>

    </div>

</nav>



<!-- PROYECTOS -->

<section class="seccion">

    <div class="container">

        <div class="titulo-seccion">

            <h2>
                Mis <span>Proyectos</span>
            </h2>

            <div class="linea-dorada"></div>

            <p>
                Algunos de los proyectos desarrollados
                durante mi formación.
            </p>

        </div>


        <div class="row g-4">


<%

    Connection conexion = null;

    PreparedStatement sentencia = null;

    ResultSet resultado = null;


    try {

        conexion = Conexion.conectar();


        String sql =
            "SELECT * FROM proyectos ORDER BY id DESC";


        sentencia =
            conexion.prepareStatement(sql);


        resultado =
            sentencia.executeQuery();


        while (resultado.next()) {

            String nombre =
                resultado.getString("nombre");


            String descripcion =
                resultado.getString("descripcion");


            String tecnologia =
                resultado.getString("tecnologia");


            String enlace =
                resultado.getString("enlace");

%>


            <div class="col-md-4">

                <div class="card-proyecto">

                    <div class="icono">
                        ◆
                    </div>


                    <h3>
                        <%= nombre %>
                    </h3>


                    <p>
                        <%= descripcion %>
                    </p>


                    <p>

                        <strong>
                            Tecnologías:
                        </strong>

                        <%= tecnologia %>

                    </p>


                    <a
                        href="<%= enlace %>"
                        class="btn btn-dorado">

                        Ver proyecto

                    </a>

                </div>

            </div>


<%

        }

    } catch (Exception e) {

%>


            <div class="col-12">

                <div class="alert alert-danger">

                    No se pudieron cargar los proyectos.

                    <br>

                    Error:
                    <%= e.getMessage() %>

                </div>

            </div>


<%

    } finally {

        try {

            if (resultado != null)
                resultado.close();

            if (sentencia != null)
                sentencia.close();

            if (conexion != null)
                conexion.close();

        } catch (Exception e) {

        }

    }

%>


        </div>

    </div>

</section>



<footer>

    <p>

        © 2026
        <strong>Roberto Exequel Ibarra Martini</strong>

    </p>

</footer>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>