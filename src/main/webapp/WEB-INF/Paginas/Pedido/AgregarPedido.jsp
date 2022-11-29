<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<div class="row"  >
    <div class="formulario container-md container-fluid mt-3">
        <div class="col-md-12" id="pediagregar">
            <form action="${pageContext.request.contextPath}/ServletPedido?accion=insertar" method="POST">
                <h1>Pedidos </h1>
                <fieldset>
                    <legend><span class="number">1</span> Agregar Pedido </legend>

                    <label for="date"> Fecha de Pedido</label>
                    <input type="date" name="fechaPedido" required>
                    <label for="cantidad">Cantidad:</label>
                    <input type="number"  name="cantidad" required>
                    <label for="idProducto">Producto</label>
                    <select name="idProducto">
                        <optgroup label="Productos">
                            <c:forEach var="productos" items="${productos}" varStatus="status" >
                                <option>${productos.idProducto}-${productos.descripcion}</option>
                            </c:forEach> 
                        </optgroup>
                    </select>
                    <label for="idProveedor">Proveedor</label>
                    <select  name="idProveedor">
                        <optgroup label="Proveedores">
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
