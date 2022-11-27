package Web;

import Data.ClienteDAO;
import Data.ProductoDAO;
import Data.VentaDAO;
import Main.Cliente;
import Main.Producto;
import Main.Venta;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ServletVenta")
public class ServletVenta extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                    this.editarVenta(request, response);
                    break;
                case "eliminar":
                    this.eliminarVenta(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Venta> ventas = new VentaDAO().listar();
        List<Producto> productos = new ProductoDAO().listar();
        List<Cliente> clientes = new ClienteDAO().listar();
        System.out.println("ventas = " + ventas);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("ventas", ventas);
        sesion.setAttribute("productos", productos);
        sesion.setAttribute("clientes", clientes);
        sesion.setAttribute("totalVentas", ventas.size());
        //sesion.setAttribute("saldoTotal", this.calcularSaldoTotal(clientes));
        request.getRequestDispatcher("ventas.jsp").forward(request, response);
        //response.sendRedirect("Inicio.jsp");
    }

    /*private double calcularSaldoTotal(List<Cliente> clientes) {
        double saldoTotal = 0;
        for (Cliente cliente : clientes) {
            saldoTotal += cliente.getSaldo();
        }
        return saldoTotal;
    }*/

    private void editarVenta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos el idCliente
        int idVenta = Integer.parseInt(request.getParameter("idVenta"));
        Venta ventas = new VentaDAO().encontrar(new Venta(idVenta));
        request.setAttribute("ventas", ventas);
        String jspEditar = "/WEB-INF/Paginas/Venta/ModificarVenta.jsp";
        request.getRequestDispatcher(jspEditar).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.insertarVenta(request, response);
                    break;
                case "modificar":
                    this.modificarVenta(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void insertarVenta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario agregarCliente
        String fechaVenta = request.getParameter("fecha_venta");
        String clienteId = request.getParameter("cliente_id");
        String productoId = request.getParameter("producto_id");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        float total = Float.parseFloat(request.getParameter("total"));
        /*double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if (saldoString != null && !"".equals(saldoString)) {
            saldo = Double.parseDouble(saldoString);
        }*/

        //Creamos el objeto de cliente (modelo)
        Venta venta = new Venta(fechaVenta, clienteId, productoId, cantidad, total);
        //Insertamos el nuevo objeto en la base de datos
        int registrosModificados = new VentaDAO().insertar(venta);
        System.out.println("registrosModificados = " + registrosModificados);

        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }

    private void modificarVenta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario editarCliente
        int idVenta = Integer.parseInt(request.getParameter("idVenta"));
        String fechaVenta = request.getParameter("fecha_venta");
        String clienteId = request.getParameter("cliente_id");
        String productoId = request.getParameter("producto_id");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        float total = Float.parseFloat(request.getParameter("total"));
        /*double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if (saldoString != null && !"".equals(saldoString)) {
            saldo = Double.parseDouble(saldoString);
        }*/

        //Creamos el objeto de cliente (modelo)
        Venta venta = new Venta(idVenta,fechaVenta, clienteId, productoId, cantidad, total);

        //Modificar el  objeto en la base de datos
        int registrosModificados = new VentaDAO().actualizar(venta);
        System.out.println("registrosModificados = " + registrosModificados);

        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }
    
        private void eliminarVenta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario editarCliente
        int idVenta = Integer.parseInt(request.getParameter("idVenta"));
        //Creamos el objeto de cliente (modelo)
        Venta venta = new Venta(idVenta);
        //Eliminamos el  objeto en la base de datos
        int registrosModificados = new VentaDAO().eliminar(venta);
        System.out.println("registrosModificados = " + registrosModificados);
        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }
}
