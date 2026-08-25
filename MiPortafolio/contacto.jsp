<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.portafolio.Conexion" %>


<%

    String mensajeResultado = "";

    String tipoMensaje = "";


    if ("POST".equalsIgnoreCase(request.getMethod())) {


        String nombre =
            request.getParameter("nombre");


        String email =
            request.getParameter("email");


        String mensaje =
            request.getParameter("mensaje");


        if (
            nombre != null &&
            email != null &&
            mensaje != null &&
            !nombre.trim().isEmpty() &&
            !email.trim().isEmpty() &&
            !mensaje.trim().isEmpty()
        ) {


            Connection conexion = null;

            PreparedStatement sentencia = null;


            try {


                conexion =
                    Conexion.conectar();


                String sql =
                    "INSERT INTO contactos " +
                    "(nombre, email, mensaje) " +
                    "VALUES (?, ?, ?)";


                sentencia =
                    conexion.prepareStatement(sql);


                sentencia.setString(
                    1,
                    nombre
                );


                sentencia.setString(
                    2,
                    email
                );


                sentencia.setString(
                    3,
                    mensaje
                );


                sentencia.executeUpdate();


                mensajeResultado =
                    "¡Mensaje enviado correctamente! Gracias por contactarme.";

                tipoMensaje =
                    "success";


            } catch (Exception e) {


                mensajeResultado =
                    "No se pudo enviar el mensaje: "
                    + e.getMessage();

                tipoMensaje =
                    "danger";


            } finally {


                try {

                    if (sentencia != null)
                        sentencia.close();

                    if (conexion != null)
                        conexion.close();

                } catch (Exception e) {

                }

            }


        } else {


            mensajeResultado =
                "Por favor completa todos los campos.";

            tipoMensaje =
                "warning";

        }

    }

%>



<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Mi Portafolio | Contacto</title>


    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <link rel="stylesheet"
          href="css/estilos.css">

</head>


<body>


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



<section class="seccion seccion-gris">

    <div class="container">

        <div class="titulo-seccion">

            <h2>
                <span>Contacto</span>
            </h2>

            <div class="linea-dorada"></div>

            <p>
                Si deseas contactarme, completa
                el siguiente formulario.
            </p>

        </div>


        <div class="formulario">


<%

    if (!mensajeResultado.isEmpty()) {

%>


            <div class="alert alert-<%= tipoMensaje %>">

                <%= mensajeResultado %>

            </div>


<%

    }

%>


            <form
                method="post"
                action="contacto.jsp">


                <!-- NOMBRE -->

                <div class="mb-3">

                    <label
                        for="nombre"
                        class="form-label">

                        Nombre completo

                    </label>


                    <input
                        type="text"
                        class="form-control"
                        id="nombre"
                        name="nombre"
                        placeholder="Escribe tu nombre"
                        required
                        minlength="2"
                        maxlength="100">

                </div>



                <!-- EMAIL -->

                <div class="mb-3">

                    <label
                        for="email"
                        class="form-label">

                        Correo electrónico

                    </label>


                    <input
                        type="email"
                        class="form-control"
                        id="email"
                        name="email"
                        placeholder="ejemplo@correo.com"
                        required
                        maxlength="150">

                </div>



                <!-- MENSAJE -->

                <div class="mb-3">

                    <label
                        for="mensaje"
                        class="form-label">

                        Mensaje

                    </label>


                    <textarea
                        class="form-control"
                        id="mensaje"
                        name="mensaje"
                        rows="6"
                        placeholder="Escribe tu mensaje..."
                        required
                        minlength="10"
                        maxlength="1000"></textarea>

                </div>



                <button
                    type="submit"
                    class="btn btn-dorado">

                    Enviar mensaje

                </button>


            </form>

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