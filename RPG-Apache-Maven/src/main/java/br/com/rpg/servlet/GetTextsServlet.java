package br.com.rpg.servlet;
import br.com.rpg.model.Texts;
import br.com.rpg.dao.TextsDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Random;

@WebServlet("/Game")
public class GetTextsServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Texts> texts = new TextsDao().getTexts(1);

        HttpSession session = req.getSession();
        session.setAttribute("game", texts);

        req.getRequestDispatcher("game.jsp").forward(req,resp);
    }

}
