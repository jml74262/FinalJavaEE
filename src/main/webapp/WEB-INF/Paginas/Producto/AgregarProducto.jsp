<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<div class="row" >
    <div class="container-md container-fluid mt-3">
        <div class="col-md-12"  id="producagregar">
            <form action="${pageContext.request.contextPath}/ServletProducto?accion=insertar" method="POST">
                <h1>Producto</h1>
                <fieldset>
                    <legend><span class="number">1</span> Agregar Producto </legend>
                    <label for="descripcion">Descripcion</label>
                    <input type="text" name="descripcion">
                    <label for="precio">Precio </label>
                    <input type="number" name="precio">
                    <label for="cantidad">Cantidad: </label>
                    <input type="number" name="cantidad">
                    <label for="idProveedor">Id Proveedor</label>
                    <select name="idProveedor">
                        <optgroup label="Proveedor">
                            <c:forEach var="proveedores" items="${proveedores}" varStatus="status" >
                                <option>${proveedores.idProveedor}-${proveedores.nombre}</option>
                            </c:forEach> 
                        </optgroup>
                    </select>
                </fieldset>
                <button type="submit">Guardar</button>
            </form>
        </div>
    </div>
</div>
