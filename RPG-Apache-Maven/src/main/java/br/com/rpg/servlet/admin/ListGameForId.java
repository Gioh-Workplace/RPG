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

@WebServlet("/game-list-for-id")
public class ListGameForId extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("clickUser", "game-update");

        String id = req.getParameter("updateGame");
        int id1 = 0;
        if (id != null && !id.equals("id")) {
            id1 = Integer.parseInt(id);
        }

        List<Texts> texts = new TextsDao().getTexts(id1);

        HttpSession session = req.getSession();
        session.setAttribute("gameUpd", texts);


        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }


}
