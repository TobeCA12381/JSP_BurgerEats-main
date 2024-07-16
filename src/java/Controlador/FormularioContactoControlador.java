/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

/**
 *
 * @author zh
 */

import Modelo.FormularioContacto;
import ModeloDAO.FormularioContactoDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class FormularioContactoControlador extends HttpServlet {

    FormularioContactoDAO dao = new FormularioContactoDAO();
    Gson gson = new Gson();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if ("listar".equalsIgnoreCase(action)) {
            List<FormularioContacto> lista = dao.listar();
            out.print(gson.toJson(lista));
        } else if ("list".equalsIgnoreCase(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            FormularioContacto formularioContacto = dao.list(id);
            out.print(gson.toJson(formularioContacto));
        }
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FormularioContacto formularioContacto = gson.fromJson(request.getReader(), FormularioContacto.class);
        dao.add(formularioContacto);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print("True");
        out.flush();
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FormularioContacto formularioContacto = gson.fromJson(request.getReader(), FormularioContacto.class);
        dao.edit(formularioContacto);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(gson.toJson(formularioContacto));
        out.flush();
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        dao.eliminar(id);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(gson.toJson("{\"success\": true}"));
        out.flush();
    }
}