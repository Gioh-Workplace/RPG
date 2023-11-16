package br.com.rpg.servlet;

import br.com.rpg.dao.RankingDAO;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/ranking-list")
public class ListRankingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Usuario> rankingTop = new RankingDAO().listRankingTop10();

        HttpSession session = req.getSession();
        session.setAttribute("rankingTop", rankingTop);

        req.getRequestDispatcher("ranking.jsp").forward(req, resp);
    }
}
