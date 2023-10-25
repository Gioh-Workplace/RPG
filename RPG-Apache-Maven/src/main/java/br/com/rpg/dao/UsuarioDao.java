package br.com.rpg.dao;

import br.com.rpg.model.Usuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UsuarioDao {


    public void createTable() {
        String SQL = "CREATE TABLE IF NOT EXISTS USUARIO (ID INT AUTO_INCREMENT PRIMARY KEY, USERNAME VARCHAR(255) NOT NULL, EMAIL VARCHAR(255) NOT NULL, SENHA VARCHAR(255) NOT NULL)";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("conexao feita com sucesso");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.execute();

            System.out.println("tabela criada com sucesso");

            connection.close();


        } catch (Exception e) {
            System.out.println("Tabela nao criada ou erro na conexao");
        }
    }

    public void createUser(Usuario user) {

        String SQL = "INSERT INTO USUARIO (USERNAME, EMAIL, SENHA) VALUES (?, ?, ?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("conexao feita com sucesso");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getSenha());
            preparedStatement.execute();

            System.out.println("insert feito com sucesso");

            connection.close();

        } catch (Exception e) {
            System.out.println("erro na conexao");
        }

    }


}
