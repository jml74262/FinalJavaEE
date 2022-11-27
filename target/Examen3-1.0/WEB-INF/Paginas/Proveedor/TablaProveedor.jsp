<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<h1 class="mt-4">Proveedores</h1>
<div class="tabla1">
    <div class="card mb-4" >
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Tabla de Proveedores
        </div>
        <div class="card-body">
            <table class="table table-white d-block d-lg-table overflow-scroll" id="datatablesSimple">
                <thead>
                    <tr>
                        <th scope="col" class="text-nowrap">Proveedor_Id</th>
                        <th scope="col" class="text-nowrap">Nombre</th>
                        <th scope="col">Apellido_Paterno</th>
                        <th scope="col">Apellido_Materno</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Marca</th>
                        <th scope="col" class="text-center">Borrar</th>
                    </tr>
                </thead>
                <tbody>
                  <c:forEach var="ventas" items="${ventas}" varStatus="status" >
                    <tr>
                        <td>${ventas.idVenta}</td>
                        <td>${ventas.fechaVenta}</td>
                        <td>${ventas.idCliente}</td>
                        <td>${ventas.idProducto}</td>
                        <td class="text-nowrap">${ventas.cantidad}</td>
                        <td class="text-nowrap"><fmt:formatNumber value="${ventas.total}" type="currency" /></td>
                        <td class="align-middle text-center"><a href="${pageContext.request.contextPath}/ServletVenta?accion=eliminar&idVenta=${ventas.idVenta}" >
                        <i class="fa-solid fa-trash-can text-danger"></i></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>