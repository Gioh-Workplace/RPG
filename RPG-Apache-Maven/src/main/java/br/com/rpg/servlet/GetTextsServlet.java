package br.com.rpg.servlet;
import br.com.rpg.model.Texts;
import br.com.rpg.dao.TextsDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getTexts")
public class GetTextsServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Texts> textos = new TextsDao().getTexts();
        //Texts[] textos = new TextsDao().getTexts();
       // System.out.println(textos.get(0).getTexto());
        req.getSession().setAttribute("TextList",textos);
        System.out.println("TextList criada");
        req.getRequestDispatcher("game.jsp").forward(req,resp);


    }
}
