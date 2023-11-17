package br.com.rpg.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;


@WebServlet("/first-room")
public class Sala1Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String opcao = req.getParameter("button1");

        switch (opcao) {

            case "atacar":
                req.setAttribute("opcao", "atacando");
                req.getRequestDispatcher("game.jsp").forward(req, resp);
                break;

            case "fugir":
                req.setAttribute("opcao", "fugindo");
                Random rdn = new Random();

                int chance = rdn.nextInt(1, 3);

                if(chance == 1) {
                    req.setAttribute("sobrevive", 1);
                }
                else
                    req.setAttribute("sobrevive", 2);

                req.getRequestDispatcher("game.jsp").forward(req, resp);
                break;
        }


    }
}
