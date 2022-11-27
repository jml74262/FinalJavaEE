<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<h1 class="mt-4">Ventas</h1>
<div class="tabla1">
    <div class="card mb-4" >
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Tabla de Ventas
        </div>
        <div class="card-body">
            <table class="table table-white d-block d-lg-table overflow-scroll" id="datatablesSimple">
                <thead>
                    <tr>
                        <th scope="col" class="text-center">Venta_Id</th>
                        <th scope="col" class="text-center">Fecha_Venta</th>
                        <th scope="col" class="text-center">Cliente</th>
                        <th scope="col" class="text-center">Producto</th>
                        <th scope="col" class="text-center">Cantidad</th>
                        <th scope="col" class="text-center">Total</th>
                        <th scope="col" class="text-center">Modificar</th>
                        <th scope="col" class="text-center">Eliminar</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <!-- Iteramos cada elemento de la lista de ventas -->
                <c:forEach var="ventas" items="${ventas}" varStatus="status" >
                    <tr>
                        <td class="text-center">${ventas.idVenta}</td>
                        <td class="text-center">${ventas.fechaVenta}</td>
                        <td class="text-center">${ventas.idCliente}</td>
                        <td class="text-center">${ventas.idProducto}</td>
                        <td class="text-center">${ventas.cantidad}</td>
                        <td class="text-center"><fmt:formatNumber value="${ventas.total}" type="currency" /></td>
                        <td class="align-middle text-center"><a href="${pageContext.request.contextPath}/ServletVenta?accion=editar&idVenta=${ventas.idVenta}" >
                        <i class="fa-sharp fa-solid fa-pen-to-square"></i></a></td>
                        <td class="align-middle text-center"><a href="${pageContext.request.contextPath}/ServletVenta?accion=eliminar&idVenta=${ventas.idVenta}" >
                        <i class="fa-solid fa-trash-can text-danger"></i></a></td>
                    </tr>
                </c:forEach>
            </tbody>
            </table>
        </div>
    </div>
</div>