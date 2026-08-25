<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Mi Portafolio | Inicio</title>


    <!-- Bootstrap -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- CSS propio -->

    <link rel="stylesheet"
          href="css/estilos.css">

</head>


<body>


<!-- =========================================
     NAVBAR
     ========================================= -->

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



<!-- =========================================
     HERO
     ========================================= -->

<section class="hero">

    <div class="container">

        <p class="mb-2">
            DESARROLLADOR WEB
        </p>


        <h1>

            Hola, soy
            <span>Tu Nombre</span>

        </h1>


        <p>

            Soy estudiante de Desarrollo Web II
            apasionado por crear sitios web modernos,
            funcionales y adaptables.

        </p>


        <a
            href="proyectos.jsp"
            class="btn btn-dorado">

            Ver mis proyectos

        </a>


        <a
            href="contacto.jsp"
            class="btn btn-outline-dorado ms-2">

            Contactarme

        </a>

    </div>

</section>



<!-- =========================================
     SOBRE MÍ
     ========================================= -->

<section class="seccion">

    <div class="container">

        <div class="titulo-seccion">

            <h2>
                Sobre <span>mí</span>
            </h2>

            <div class="linea-dorada"></div>

        </div>


        <div class="row align-items-center">

            <div class="col-md-6">

                <h3>
                    Desarrollo web con creatividad
                </h3>

                <p>

                    Actualmente estudio Desarrollo Web II,
                    donde estoy aprendiendo diferentes
                    tecnologías para crear aplicaciones
                    web completas.

                </p>

                <p>

                    Mi objetivo es continuar desarrollando
                    mis habilidades en programación y
                    diseño web.

                </p>

            </div>


            <div class="col-md-6">

                <div class="card-proyecto">

                    <h3>
                        Tecnologías
                    </h3>

                    <div>

                        <span class="badge-dorado">
                            HTML5
                        </span>

                        <span class="badge-dorado">
                            CSS3
                        </span>

                        <span class="badge-dorado">
                            Bootstrap
                        </span>

                        <span class="badge-dorado">
                            Java
                        </span>

                        <span class="badge-dorado">
                            JSP
                        </span>

                        <span class="badge-dorado">
                            MySQL
                        </span>

                        <span class="badge-dorado">
                            Git
                        </span>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================================
     LLAMADO A LA ACCIÓN
     ========================================= -->

<section class="seccion seccion-gris text-center">

    <div class="container">

        <h2>
            ¿Quieres conocer mi trabajo?
        </h2>

        <p class="mb-4">

            Revisa mis proyectos y conoce
            las tecnologías que estoy aprendiendo.

        </p>


        <a
            href="proyectos.jsp"
            class="btn btn-dorado">

            Ver proyectos

        </a>

    </div>

</section>



<!-- =========================================
     FOOTER
     ========================================= -->

<footer>

    <p>

        © 2026
        <strong>Roberto Exequel Ibarra Martini</strong>.
        Todos los derechos reservados.

    </p>

    <p>

        Portafolio desarrollado para
        Desarrollo Web II.

    </p>

</footer>



<!-- Bootstrap JavaScript -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>