package br.com.rpg.servlet;


import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-user")
public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userName = req.getParameter("username");
        String email = req.getParameter("emailUser");
        String senha = req.getParameter("senhaUser");

        Usuario usuario = new Usuario(userName, email, senha);

        UsuarioDao usuarioDao = new UsuarioDao();

        usuarioDao.createTable();

        usuarioDao.createUser(usuario);

        req.getRequestDispatcher("login.jsp").forward(req, resp);

    }
}
