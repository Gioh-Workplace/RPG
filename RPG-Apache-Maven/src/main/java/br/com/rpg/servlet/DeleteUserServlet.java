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

@WebServlet("/delete")
public class DeleteUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String loggedUser = (String) session.getAttribute("loggedUser");

        Usuario usuario = new Usuario(loggedUser);

        new UsuarioDao().deleteUser(usuario);

        req.getSession().invalidate();

        req.setAttribute("message", "Sucesso em apagar a conta!");


        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
