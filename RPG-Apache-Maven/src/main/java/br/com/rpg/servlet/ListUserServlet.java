package br.com.rpg.servlet;

import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/usuarios-list")
public class ListUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("clickUser", "usuarios");

        List<Usuario> usuarios = new UsuarioDao().listUsers();

        req.getSession().setAttribute("users", usuarios);

        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }
}
