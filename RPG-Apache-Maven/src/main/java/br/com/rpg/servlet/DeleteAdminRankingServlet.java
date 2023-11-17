package br.com.rpg.servlet;

import br.com.rpg.dao.RankingDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete-ranking")
public class DeleteAdminRankingServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idRankingDelete = req.getParameter("idRankingDelete");

        new RankingDAO().updateRankingNull(idRankingDelete);

        resp.sendRedirect("/ranking-list-admin");
    }
}
