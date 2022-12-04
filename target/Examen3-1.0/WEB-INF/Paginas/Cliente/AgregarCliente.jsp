<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<div class="row" >
    <div class="container-md container-fluid mt-3">
        <div class="col-md-12" id="clieagregar">
            <form action="${pageContext.request.contextPath}/ServletCliente?accion=insertar" method="POST">
                <h1>Cliente</h1>
                <fieldset>
                    <legend><span class="number">1</span> Agregar Cliente </legend>
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" required>
                    <label for="apellido_paterno">Apellido Paterno</label>
                    <input type="text" name="apellido_paterno" required>
                    <label for="apellido_materno">Apellido Materno</label>
                    <input type="text" name="apellido_materno" required>
                    <label for="tel">Telefono </label>
                    <input type="tel" name="telefono" required>
                    <label for="correo">Correo</label>
                    <input type="email" name="correo" required>
                </fieldset>
                <button type="submit">Guardar</button>
            </form>
        </div>
    </div>
</div>