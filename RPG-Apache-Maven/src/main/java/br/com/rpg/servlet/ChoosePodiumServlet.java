package br.com.rpg.servlet;

import br.com.rpg.dao.RankingDAO;
import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update-ranking")
public class ChoosePodiumServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("clickUser", "podium");

        HttpSession session = req.getSession();
        String rankingNew = req.getParameter("rankingNew");

        if (rankingNew != null) {
            session.setAttribute("rankingNew", rankingNew);
            int id = Integer.parseInt(rankingNew);
            new RankingDAO().setPontuacaoA(id);
        }

        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("clickUser", "podium");
        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }
}
