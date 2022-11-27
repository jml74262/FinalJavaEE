<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<div class="row" >
    <div class="container-md container-fluid mt-3">
        <div class="col-md-12" id="proveeagregar">
            <form action="index.html" method="post">
                <h1>Proveedor</h1>
                <fieldset>
                    <legend><span class="number">1</span> Agregar Proveedor </legend>
                    <label for="nombre">Nombre</label>
                    <input type="text" name="Nombre">
                    <label for="apellido_paterno">Apellido Paterno</label>
                    <input type="text" name="apellido_Paterno">
                    <label for="apellido_materno">Apellido Materno</label>
                    <input type="text" name="apellido_Materno">
                    <label for="tel">Telefono </label>
                    <input type="tel" name="telefono">
                    <label for="direccion">Direccion</label>
                    <input type="text" name="direccion">
                    <label for="marca">Marca</label>
                    <input type="text" name="marca">
                </fieldset>
                <button type="submit">Guardar</button>
            </form>
        </div>
    </div>
</div>