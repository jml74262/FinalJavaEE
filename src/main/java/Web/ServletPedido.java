/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Web;

import Data.PedidoDAO;
import Main.Pedido;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ServletPedido")
public class ServletPedido extends HttpServlet {
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                    this.editarPedido(request, response);
                    break;
                case "eliminar":
                    this.eliminarPedido(request, response);
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
        List<Pedido> pedidos = new PedidoDAO().listar();
        System.out.println("pedidos = " + pedidos);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("pedidos", pedidos);
        sesion.setAttribute("totalPedidos", pedidos.size());
        //sesion.setAttribute("saldoTotal", this.calcularSaldoTotal(clientes));
        //request.getRequestDispatcher("clientes.jsp").forward(request, response);
        response.sendRedirect("pedidos.jsp");
    }

    /*private double calcularSaldoTotal(List<Cliente> clientes) {
        double saldoTotal = 0;
        for (Cliente cliente : clientes) {
            saldoTotal += cliente.getSaldo();
        }
        return saldoTotal;
    }*/

    private void editarPedido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos el idCliente
        int idPedido = Integer.parseInt(request.getParameter("pedido_id"));
        Pedido pedido = new PedidoDAO().encontrar(new Pedido(idPedido));
        request.setAttribute("pedido", pedido);
        String jspEditar = "/WEB-INF/paginas/producto/editarCliente.jsp";
        request.getRequestDispatcher(jspEditar).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.insertarPedido(request, response);
                    break;
                case "modificar":
                    this.modificarPedido(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void insertarPedido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario agregarCliente
        String fechaPedido = request.getParameter("fecha_pedido");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        String productId =request.getParameter("product_id");
        String providerId =request.getParameter("provider_id");
        /*double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if (saldoString != null && !"".equals(saldoString)) {
            saldo = Double.parseDouble(saldoString);
        }*/

        //Creamos el objeto de cliente (modelo)
        Pedido pedido = new Pedido(fechaPedido, cantidad, productId, providerId);

        //Insertamos el nuevo objeto en la base de datos
        int registrosModificados = new PedidoDAO().insertar(pedido);
        System.out.println("registrosModificados = " + registrosModificados);

        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }

    private void modificarPedido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario editarCliente
        int idPedido = Integer.parseInt(request.getParameter("pedido_id"));
        String fechaPedido = request.getParameter("fecha_pedido");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        String productId =request.getParameter("product_id");
        String providerId =request.getParameter("provider_id");
        /*double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if (saldoString != null && !"".equals(saldoString)) {
            saldo = Double.parseDouble(saldoString);
        }*/

        //Creamos el objeto de cliente (modelo)
        Pedido pedido = new Pedido(idPedido, fechaPedido, cantidad, productId, providerId);

        //Modificar el  objeto en la base de datos
        int registrosModificados = new PedidoDAO().actualizar(pedido);
        System.out.println("registrosModificados = " + registrosModificados);

        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }
    
        private void eliminarPedido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario editarCliente
        int idPedido = Integer.parseInt(request.getParameter("pedido_id"));
     

        //Creamos el objeto de cliente (modelo)
        Pedido pedido = new Pedido(idPedido);

        //Eliminamos el  objeto en la base de datos
        int registrosModificados = new PedidoDAO().eliminar(pedido);
        System.out.println("registrosModificados = " + registrosModificados);

        //Redirigimos hacia accion por default
        this.accionDefault(request, response);
    }
}
