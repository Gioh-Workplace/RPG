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

@WebServlet("/update-game")
public class UpdateGameServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        HttpSession session = req.getSession();

        String id = req.getParameter("idU");
        String texto = req.getParameter("texto");
        String op1 = req.getParameter("OP1");
        String ref1 = req.getParameter("REF1");
        String op2 = req.getParameter("OP2");
        String ref2 = req.getParameter("REF2");
        String op3 = req.getParameter("OP3");
        String ref3 = req.getParameter("REF3");
        String imgem = req.getParameter("imgem");
        int espada = Integer.parseInt(req.getParameter("espada"));
        int granada = Integer.parseInt(req.getParameter("granada"));
        int pocao = Integer.parseInt(req.getParameter("pocao"));
        int armadura = Integer.parseInt(req.getParameter("armadura"));
        int espadaDano = Integer.parseInt(req.getParameter("espadaDano"));
        int granadaDano = Integer.parseInt(req.getParameter("granadaDano"));
        int pocaoPts = Integer.parseInt(req.getParameter("pocaoPts"));
        int armaduraPts = Integer.parseInt(req.getParameter("armaduraPts"));
        int idd = Integer.parseInt(id);
        int ref11 = Integer.parseInt(ref1);
        int ref22 = Integer.parseInt(ref2);
        int ref33 = Integer.parseInt(ref3);

        Texts texts = new Texts(idd, texto, op1, ref11, op2, ref22, op3, ref33, imgem, espada, granada, pocao, armadura, espadaDano, granadaDano, pocaoPts, armaduraPts);

        new TextsDao().updateText(texts, idd);

        resp.sendRedirect("/game-list");
    }
}
