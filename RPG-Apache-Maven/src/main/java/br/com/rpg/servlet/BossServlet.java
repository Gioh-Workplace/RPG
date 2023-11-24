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
import java.util.Random;


@WebServlet("/boss-fight")
public class BossServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Random random = new Random();
        HttpSession session = req.getSession();
        String but = req.getParameter("but");
        int id = Integer.parseInt(but);

        int hpUser = Integer.parseInt(req.getParameter("hpUser"));
        int hpBoss = Integer.parseInt(req.getParameter("hpBoss"));
        if(session.getAttribute("hpUsuario") == null) {
            session.setAttribute("hpUsuario", hpUser);
            session.setAttribute("hpChefe", hpBoss);
        } else {
            int hpChefe = (int) session.getAttribute("hpChefe");
            if (id == 61) {
                int ataque = random.nextInt(1, 5);
                if (ataque == 1) {
                    id = 61;
                    hpChefe -= 2;
                    session.setAttribute("hpChefe", hpChefe);
                } else {
                    id = 62;
                }
            }
        }
        List<Texts> texts = new TextsDao().getTexts(id);


        session.setAttribute("game", texts);

        if(id == 62) {
            int ataqueBoss = random.nextInt(1, 4);
            int hpUsuario = (int) session.getAttribute("hpUsuario");
            if(ataqueBoss == 1) {
                id = 63;
                hpUsuario -= 4;
                session.setAttribute("hpUsuario", hpUsuario);
            } else {
                id = 64;
            }
        }


        texts = new TextsDao().getTexts(id);


        session.setAttribute("game", texts);


        req.getRequestDispatcher("game.jsp").forward(req, resp);
    }
}
