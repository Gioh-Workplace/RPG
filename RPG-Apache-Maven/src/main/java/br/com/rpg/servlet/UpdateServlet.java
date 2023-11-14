package br.com.rpg.servlet;

import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String loggedUser = (String) session.getAttribute("loggedUser");

        String newUsername = req.getParameter("username");

        Usuario usuario = new Usuario(loggedUser);

        UsuarioDao usuarioDao = new UsuarioDao();

        usuarioDao.updateUser(usuario, newUsername);

        req.getSession().setAttribute("loggedUser", newUsername);

        req.getRequestDispatcher("perfil.jsp").forward(req, resp);

    }
}
