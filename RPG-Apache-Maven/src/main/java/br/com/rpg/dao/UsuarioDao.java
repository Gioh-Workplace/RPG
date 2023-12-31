package br.com.rpg.dao;

import br.com.rpg.config.ConnectionPoolConfig;
import br.com.rpg.model.Usuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UsuarioDao {

    public void createTable() {
        String createTableSQL = "CREATE TABLE IF NOT EXISTS USUARIO (ID INT AUTO_INCREMENT PRIMARY KEY, USERNAME VARCHAR(255) NOT NULL, EMAIL VARCHAR(255) NOT NULL, SENHA VARCHAR(255) NOT NULL, PONTUACAO INT NULL)";
        String insertAdminSQL = "INSERT INTO USUARIO (USERNAME, EMAIL, SENHA, PONTUACAO) SELECT ?, ?, ?, ? WHERE NOT EXISTS (SELECT 1 FROM USUARIO WHERE USERNAME = ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement createTableStatement = connection.prepareStatement(createTableSQL);
            createTableStatement.execute();

            PreparedStatement insertAdminStatement = connection.prepareStatement(insertAdminSQL);
            insertAdminStatement.setString(1, "admin");
            insertAdminStatement.setString(2, "admin@gmail.com");
            insertAdminStatement.setString(3, "admin123");
            insertAdminStatement.setInt(4, 10);
            insertAdminStatement.setString(5, "admin");
            insertAdminStatement.execute();

            System.out.println("Tabela criada e dados do admin inseridos com sucesso");

            connection.close();

        } catch (Exception e) {
            System.out.println("Tabela não criada ou erro na conexão");

            System.out.println("Erro: " + e.getMessage());
        }
    }

    public void createUser(Usuario user) {

        String SQL = "INSERT INTO USUARIO (USERNAME, EMAIL, SENHA) VALUES (?, ?, ?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();


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

    public List<Usuario> listUsers() {
        String SQL = "SELECT * FROM USUARIO WHERE USERNAME <> (?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, "admin");
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Usuario> usuarios = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");

                usuarios.add(new Usuario(id, username, email));
            }

            System.out.println("Sucesso em selecionar e colocar na lista");

            return usuarios;


        } catch(Exception e) {
            System.out.println("Erro em selecionar");
            return Collections.emptyList();
        }


    }

    public void updateUser(Usuario usuario, String newUsername, String fieldToUpdate) {
        String SQL = "UPDATE USUARIO SET " + fieldToUpdate.toUpperCase() + " = ? WHERE USERNAME = ?";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, newUsername);
            preparedStatement.setString(2, usuario.getUsername());
            preparedStatement.execute();

            System.out.println("Sucesso em atualizar username");

            connection.close();


        } catch (Exception e) {
            System.out.println("erro no update");
        }
    }

    public void deleteUser(Usuario usuario) {
        String SQL = "DELETE FROM USUARIO WHERE USERNAME = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, usuario.getUsername());
            preparedStatement.execute();

            System.out.println("Sucesso em deletar usuario");

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            System.out.println("Erro no delete");
        }
    }

    public boolean verificarCredencial(Usuario usuario) {

        String SQL = "SELECT * FROM USUARIO WHERE USERNAME = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, usuario.getUsername());
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucesso em selecionar username");
            while (resultSet.next()) {

                String email = resultSet.getString("email");
                String password = resultSet.getString("senha");

                if (email.equals(usuario.getEmail()) && password.equals(usuario.getSenha())) {

                    return true;

                }

            }


            connection.close();

            return false;

        } catch (Exception e) {

            System.out.println("Erro: " + e.getMessage());

            return false;

        }
    }

    public boolean verificarCadastro(Usuario usuario) {

        String SQL = "SELECT * FROM USUARIO";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                if (resultSet.getString("username").equals(usuario.getUsername()) || resultSet.getString("email").equals(usuario.getEmail())) {
                    System.out.println("Usuario ja cadastrado");
                    return true;
                }
            }

            connection.close();
            return false;

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return false;
        }

    }


}
