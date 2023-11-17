package br.com.rpg.servlet;

import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("login.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("emailUser");
        String senha = req.getParameter("senhaUser");

        Usuario usuario = new Usuario(username, email, senha);

        boolean isValido = new UsuarioDao().verificarCredencial(usuario);

        if(isValido && username.equals("admin") && email.equals("admin@gmail.com")) {
            req.getSession().setAttribute("adminLogado", username);
            req.getRequestDispatcher("admin.jsp").forward(req, resp);
        }

        else if (isValido && !username.equals("admin") && !email.equals("admin@gmail.com")) {

            req.getSession().setAttribute("loggedUser", username);
            req.getSession().setAttribute("emailUsuario", email);
            req.getSession().setAttribute("senhaUsuario", senha);


            System.out.println("logado com sucesso");

            req.getRequestDispatcher("index.jsp").forward(req, resp);


        } else {

            req.setAttribute("message", "Credenciais Inválidas");

            System.out.println("credenciais invalidas");

            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }


    }
}
