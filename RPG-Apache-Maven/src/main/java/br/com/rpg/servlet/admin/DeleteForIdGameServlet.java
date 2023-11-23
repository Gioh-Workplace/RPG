package br.com.rpg.servlet.admin;

import br.com.rpg.dao.TextsDao;
import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-for-id-game")
public class DeleteForIdGameServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("idGameDelete");
        int idd = Integer.parseInt(id);

        new TextsDao().deleteText(idd);

        resp.sendRedirect("/game-list");
    }
}
