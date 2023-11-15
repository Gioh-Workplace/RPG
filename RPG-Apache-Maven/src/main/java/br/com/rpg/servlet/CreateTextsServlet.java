package br.com.rpg.servlet;

import br.com.rpg.dao.TextsDao;
import br.com.rpg.model.Texts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CreateTexts")
public class CreateTextsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String texto1 = "texto";
        String nome = "nome";
        Texts texts = new Texts(texto1,nome);
        TextsDao textsDao = new TextsDao();
        textsDao.createTable();
        textsDao.createTexts(texts);
        //req.getRequestDispatcher("game.jsp").forward(req, resp);
        resp.sendRedirect("/getTexts");
    }
}
