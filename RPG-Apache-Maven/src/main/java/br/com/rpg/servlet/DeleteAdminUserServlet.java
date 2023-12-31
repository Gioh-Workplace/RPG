package br.com.rpg.servlet;

import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/delete-user")
public class DeleteAdminUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("usernameDelete");

        new UsuarioDao().deleteUser(new Usuario(username));

        resp.sendRedirect("/usuarios-list");
    }
}
