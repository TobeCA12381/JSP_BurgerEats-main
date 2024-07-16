package Controlador;

import Modelo.Proveedor;
import ModeloDAO.ProveedorDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ProveedorControlador extends HttpServlet {

    ProveedorDAO dao = new ProveedorDAO();
    Gson gson = new Gson();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if ("listar".equalsIgnoreCase(action)) {
            List<Proveedor> lista = dao.listar();
            out.print(gson.toJson(lista));
        } else if ("list".equalsIgnoreCase(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Proveedor proveedor = dao.list(id);
            out.print(gson.toJson(proveedor));
        }
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Proveedor proveedor = gson.fromJson(request.getReader(), Proveedor.class);
        dao.add(proveedor);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print("True");
        out.flush();
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Proveedor proveedor = gson.fromJson(request.getReader(), Proveedor.class);
        dao.edit(proveedor);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(gson.toJson(proveedor));
        out.flush();
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        dao.eliminar(id);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        out.print(gson.toJson("{\"success\": true}"));
        out.flush();
    }
}
