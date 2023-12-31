package br.com.rpg.dao;

import br.com.rpg.config.ConnectionPoolConfig;
import br.com.rpg.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RankingDAO
{
    public List<Usuario> listRankingTop(int pontuacaoA) {

        String SQL = "SELECT * FROM USUARIO WHERE ID > 1 AND PONTUACAO > 0 ORDER BY PONTUACAO ASC LIMIT ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setInt(1, pontuacaoA);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Usuario> usuarios = new ArrayList<>();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String senha = resultSet.getString("senha");
                int pontuacao = resultSet.getInt("pontuacao");

                Usuario usuario = new Usuario(id, username, email, senha, pontuacao);

                usuarios.add(usuario);

            }
            System.out.println("Select feito com sucesso ranking");

            connection.close();

            return usuarios;

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return null;
        }
    }

    public List<Usuario> listRankingTop() {

        String SQL = "SELECT * FROM USUARIO WHERE ID > 1 ORDER BY PONTUACAO ASC";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Usuario> usuarios = new ArrayList<>();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String senha = resultSet.getString("senha");
                int pontuacao = resultSet.getInt("pontuacao");

                Usuario usuario = new Usuario(id, username, email, senha, pontuacao);
                usuarios.add(usuario);
            }

            System.out.println("Select feito com sucesso ranking Todos");

            connection.close();

            return usuarios;

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return null;
        }
    }

    public int getPontuacaoA()
    {

        String SQL = "SELECT PONTUACAO FROM USUARIO WHERE ID = 1";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            ResultSet resultSet = preparedStatement.executeQuery();

            int pontuacaoA = 0;

            while (resultSet.next())
            {
                pontuacaoA = resultSet.getInt("pontuacao");
            }

            System.out.println("Select feito com sucesso: " + pontuacaoA);

            return pontuacaoA;

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return 0;
        }
    }

    public void setPontuacaoA(int pontuacaoA)
    {

        String SQL = "UPDATE USUARIO SET PONTUACAO = ? WHERE ID = 1";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setInt(1, pontuacaoA);
            preparedStatement.executeUpdate();

            System.out.println("Update feito com sucesso: " + pontuacaoA);

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void updateRankingNull(String id)
    {
        String SQL = "UPDATE USUARIO SET PONTUACAO = NULL WHERE ID = ?;";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);
            preparedStatement.executeUpdate();

            System.out.println("Update feito com sucesso: " + id);

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void updateRanking(int pontuacao, int idU)
    {
        String SQL = "UPDATE USUARIO SET PONTUACAO = ? WHERE id = ? AND (PONTUACAO IS NULL OR ? < PONTUACAO)";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setInt(1, pontuacao);
            preparedStatement.setInt(2, idU);
            preparedStatement.setInt(3, pontuacao);

            System.out.println("pontuacao: " + pontuacao);
            System.out.println("idU: " + idU);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Update feito com sucesso");
            } else {
                System.out.println("A pontuação atual é menor ou igual à nova pontuação. Nenhuma atualização foi feita.");
            }

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

}
