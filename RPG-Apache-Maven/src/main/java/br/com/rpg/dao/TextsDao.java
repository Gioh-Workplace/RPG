package br.com.rpg.dao;

import br.com.rpg.config.ConnectionPoolConfig;
import br.com.rpg.model.Texts;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class TextsDao {
    public void createTable() {
        String SQL = "CREATE TABLE IF NOT EXISTS Textos (ID INT AUTO_INCREMENT PRIMARY KEY, Texto VARCHAR(255) NOT NULL)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();


            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.execute();

            System.out.println("Tabela de textos criada");


            connection.close();


        } catch (Exception e) {
            System.out.println("Tabela nao criada ou erro na conexao");
        }
    }

    public void createTexts(Texts texts, int length) {

        String SQL = "INSERT INTO Textos (Texto) VALUES (?)";
        int vef = isEmpty();
        if (vef == -1|| vef<length) {
            try {

                Connection connection = ConnectionPoolConfig.getConnection();


                PreparedStatement preparedStatement = connection.prepareStatement(SQL);

                preparedStatement.setString(1, texts.getTexto());

                preparedStatement.execute();

                System.out.println("Insert feito com sucesso");

                connection.close();

            } catch (Exception e) {
                System.out.println("Erro na conexao");
            }

        } else{
            System.out.println("Tabela já preenchida");}
    }

    public List<Texts> getTexts() {
        String SQL = "SELECT * FROM TEXTOS";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();
            List<Texts> texts = new ArrayList<>();
            //Texts[] texts = new Texts[300];
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String text = resultSet.getString("texto");
                Texts t = new Texts(text,id);
                texts.add(t);

            }
            System.out.println("success in select * texts");

            connection.close();

            return texts;
        } catch (Exception e) {

            System.out.println("fail in database connection");

            return null;
        }

    }

    public int isEmpty() {
        String SQL = "SELECT COUNT (*) as counter FROM TEXTOS";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("success in counting");

            //connection.close();
            resultSet.next();
            int count =    resultSet.getInt("counter");
            connection.close();
            return count;
        } catch (Exception e){
            System.out.println("Erro ao conectar ao banco");
            System.out.println(e);
            return -1;
        }


    }
}

