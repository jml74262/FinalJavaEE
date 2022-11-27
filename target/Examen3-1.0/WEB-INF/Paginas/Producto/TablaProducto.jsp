<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>
<h1 class="mt-4">Productos</h1>
<div class="tabla1">
    <div class="card mb-4" >
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Tabla de Productos
        </div>
        <div class="card-body">
            <table class="table table-white d-block d-lg-table overflow-scroll" id="datatablesSimple">
                <thead>
                    <tr>
                        <th scope="col" class="text-nowrap">Producto_Id</th>
                        <th scope="col" class="text-nowrap">Descripcion</th>
                        <th scope="col">precio</th>
                        <th scope="col">cantidad</th>
                        <th scope="col">proveedor_Id</th>
                        <th scope="col" class="text-center">Editar</th>
                        <th scope="col" class="text-center">Borrar</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Iteramos cada elemento de la lista de ventas -->
                <c:forEach var="productos" items="${productos}" varStatus="status" >
                    <tr>
                        <td class="text-center">${productos.idProducto}</td>
                        <td>${productos.descripcion}</td>
                        <td><fmt:formatNumber value="${productos.precio}" type="currency" /></td>
                        <td>${productos.cantidad}</td>
                        <td>${productos.idProveedor}</td>
                        <td class="align-middle text-center"><a href="${pageContext.request.contextPath}/ServletProducto?accion=editar&idProducto=${productos.idProducto}" >
                        <i class="fa-sharp fa-solid fa-pen-to-square"></i></a></td>
                        <td class="align-middle text-center"><a href="${pageContext.request.contextPath}/ServletProducto?accion=eliminar&idProducto=${productos.idProducto}" >
                        <i class="fa-solid fa-trash-can text-danger"></i></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
