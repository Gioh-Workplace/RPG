package br.com.rpg.servlet.game;

import br.com.rpg.dao.RankingDAO;
import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/PontuacaoUser")
public class PontuacaoUser extends javax.servlet.http.HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String score = req.getParameter("score");

        List<Usuario> usuarios = new UsuarioDao().listUsers();

        for (Usuario usuario : usuarios)
        {
            if(usuario.getUsername().equals(req.getSession().getAttribute("loggedUser")))
            {
                int id = usuario.getId();


                new RankingDAO().updateRanking(Integer.parseInt(score), id);
            }
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
