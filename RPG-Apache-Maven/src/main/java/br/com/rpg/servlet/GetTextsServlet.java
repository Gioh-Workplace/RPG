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
    // Exemplo de servlet que instancia a classe e define um atributo de solicitação


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //List<Texts> textos = new TextsDao().getTexts();
        Texts[] textos = new TextsDao().getTexts();
        req.setAttribute("TextList",textos);

        req.getRequestDispatcher("game.jsp").forward(req,resp);


    }
}