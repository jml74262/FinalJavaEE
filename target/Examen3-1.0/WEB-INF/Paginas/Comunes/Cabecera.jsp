<div class="overlay"></div>
<!-- Sidebar -->
<nav class="navbar navbar-inverse fixed-top" id="sidebar-wrapper" role="navigation">
    <ul class="nav sidebar-nav">
        <div class="sidebar-header">
            <div class="sidebar-brand">
                <a href="#">LAVAQUITA</a>
            </div>
        </div>
        <li><a href="Inicio.jsp#home">Inicio</a></li>
        <li class="dropdown">
            <a href="#ventas" class="dropdown-toggle" data-toggle="dropdown">Ventas <span class="caret"></span></a>
            <ul class="dropdown-menu animated fadeInLeft" role="menu">
                <div class="dropdown-header">Manejos</div>
                <li><a href="${pageContext.request.contextPath}/ServletVenta">Ventas</a></li>
                <li><a href="ventas.jsp#ventaagregar">Agregar</a></li>
                <li><a href="ventas.jsp#ventaModEli">Modificar/Eliminar</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#productos" class="dropdown-toggle" data-toggle="dropdown">Productos <span class="caret"></span></a>
            <ul class="dropdown-menu animated fadeInLeft" role="menu">
                <div class="dropdown-header">Manejos</div>
                <li><a href="/Productos.html#productitulo">Productos</a></li>
                <li><a href="/Productos.html#producagregar">Agregar</a></li>
                <li><a href="/Productos.html#producModEli">Modificar/Eliminar</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#pedidos" class="dropdown-toggle" data-toggle="dropdown">Pedidos <span class="caret"></span></a>
            <ul class="dropdown-menu animated fadeInLeft" role="menu">
                <div class="dropdown-header">Manejos</div>
                <li><a href="/Pedidos.html#pedititulo">Pedidos</a></li>
                <li><a href="/Pedidos.html#pediagregar">Agregar</a></li>
                <li><a href="/Pedidos.html#pediModEli">Modificar/Eliminar</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#proveedores" class="dropdown-toggle" data-toggle="dropdown">Proveedores<span
                    class="caret"></span></a>
            <ul class="dropdown-menu animated fadeInLeft" role="menu">
                <div class="dropdown-header">Manejos</div>
                <li><a href="/Proveedores.html#proveetitulo">Proveedores</a></li>
                <li><a href="/Proveedores.html#proveeagregar">Agregar</a></li>
                <li><a href="/Proveedores.html#proveeModEli">Modificar/Eliminar</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#clientes" class="dropdown-toggle" data-toggle="dropdown">Clientes<span class="caret"></span></a>
            <ul class="dropdown-menu animated fadeInLeft" role="menu">
                <div class="dropdown-header">Manejos</div>
                <li><a href="/Clientes.html#clietitulo">Clientes</a></li>
                <li><a href="/Clientes.html#clieagregar">Agregar</a></li>
                <li><a href="/Clientes.html#clieModEli">Modificar/Eliminar</a></li>
            </ul>
        </li>
        <li><a href="#Sesion">Cerrar sesion</a></li>
    </ul>
</nav>
<div id="page-content-wrapper">
    <button type="button" class="hamburger animated fadeInLeft is-closed" data-toggle="offcanvas">
        <span class="hamb-top"></span>
        <span class="hamb-middle"></span>
        <span class="hamb-bottom"></span>
    </button>

</div>
