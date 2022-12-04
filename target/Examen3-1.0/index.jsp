<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>LAVAQUITA</title>

        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.4/css/tether.min.css'>
        <link rel="stylesheet" href="./Styles/StylesLogin.css">
    </head>

    <body>
        <div class="vaq ">
            <img  width="450" src="Assets/Vaq.png" class="img-responsive" alt="Logo"/>
        </div>
        <div class="login-box">
            <form>
                <h2>La Vaquita</h2>
                <div class="user-box">
                    <input type="text" name="" required="">
                    <label>Usuario</label>
                </div>
                <div class="user-box">
                    <input type="password" name="" required="">
                    <label>Contraseña</label>
                </div>
                <a class="col-md-12 text-center " href="${pageContext.request.contextPath}/Inicio.jsp">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Iniciar sesión
                </a>
            </form>
        </div>

        <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.4/js/tether.min.js'></script>
        <script src="./Nav.js"></script>

    </body>

</html>