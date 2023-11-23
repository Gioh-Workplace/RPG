package br.com.rpg.servlet.admin;

import br.com.rpg.dao.TextsDao;
import br.com.rpg.model.Texts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/game-create")
public class CreateGameServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.getSession().setAttribute("clickUser", "game-create");

        String texto = req.getParameter("texto");
        String op1 = req.getParameter("OP1");
        String ref1 = req.getParameter("REF1");
        String op2 = req.getParameter("OP2");
        String ref2 = req.getParameter("REF2");
        String op3 = req.getParameter("OP3");
        String ref3 = req.getParameter("REF3");
        String imgem = req.getParameter("imgem");

        int ref11 = Integer.parseInt(ref1);
        int ref22 = Integer.parseInt(ref2);
        int ref33 = Integer.parseInt(ref3);

        Texts texts = new Texts(texto, op1, ref11, op2, ref22, op3, ref33, imgem);

        new TextsDao().createTexts(texts);

        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.getSession().setAttribute("clickUser", "game-create");
        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }
}