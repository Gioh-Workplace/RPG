package br.com.rpg.servlet;

import br.com.rpg.dao.TextsDao;
import br.com.rpg.model.Texts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Game-list")
public class GameServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String but = req.getParameter("but");
        int id = Integer.parseInt(but);

        List<Texts> texts = new TextsDao().getTexts(id);

        HttpSession session = req.getSession();
        session.setAttribute("game", texts);

        req.getRequestDispatcher("game.jsp").forward(req, resp);
    }


}
