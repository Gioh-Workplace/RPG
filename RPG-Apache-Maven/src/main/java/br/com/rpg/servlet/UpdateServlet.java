package br.com.rpg.servlet;

import br.com.rpg.dao.UsuarioDao;
import br.com.rpg.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String loggedUser = (String) session.getAttribute("loggedUser");
        String emailUser = (String) session.getAttribute("emailUsuario");
        String senhaUser = (String) session.getAttribute("senhaUsuario");

        String fieldToUpdate = req.getParameter("fieldToUpdate");

        UsuarioDao usuarioDao = new UsuarioDao();

        Usuario usuario = new Usuario(loggedUser, emailUser, senhaUser);
        String newUsername = req.getParameter("username");
        String newEmail = req.getParameter("emailUser");
        String newSenha = req.getParameter("senhaUser");

        Usuario aux = new Usuario(newUsername, newEmail, newSenha);
        boolean isCadastrado = usuarioDao.verificarCadastro(aux);
        switch (fieldToUpdate) {
            case "username":

                if (isCadastrado) {

                    System.out.println("Cadastrado");

                    req.setAttribute("erroUpdate", "Ja existe um username ou email com esse padrao");


                } else {
                    usuarioDao.updateUser(usuario, newUsername, fieldToUpdate);
                    req.getSession().setAttribute("loggedUser", newUsername);
                    break;

                }

            case "email":

                if (isCadastrado) {

                    System.out.println("Cadastrado");

                    req.setAttribute("erroUpdate", "Ja existe um username ou email com esse padrao");

                } else {
                    usuarioDao.updateUser(usuario, newEmail, fieldToUpdate);
                    req.getSession().setAttribute("emailUsuario", newEmail);
                    break;

                }

            case "senha":
                usuarioDao.updateUser(usuario, newSenha, fieldToUpdate);
                req.getSession().setAttribute("senhaUsuario", newSenha);
                break;
        }

        System.out.println(fieldToUpdate);

        req.getRequestDispatcher("perfil.jsp").forward(req, resp);

    }
}
