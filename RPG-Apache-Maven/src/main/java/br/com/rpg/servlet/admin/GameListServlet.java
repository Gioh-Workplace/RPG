package br.com.rpg.servlet.admin;

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

@WebServlet("/game-list")
public class GameListServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.getSession().setAttribute("clickUser", "game-list");

        List<Texts> texts = new TextsDao().listAllText();

        HttpSession session = req.getSession();
        session.setAttribute("gameList", texts);

        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }
}
