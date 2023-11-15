package br.com.rpg.dao;

import br.com.rpg.config.ConnectionPoolConfig;
import br.com.rpg.model.Texts;
import org.w3c.dom.Text;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class TextsDao {
    public void createTable() {
        String SQL = "CREATE TABLE IF NOT EXISTS Textos (ID INT AUTO_INCREMENT PRIMARY KEY,Nome VARCHAR(255) NOT NULL, Texto VARCHAR(255) NOT NULL)";

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

    public void createTexts(Texts texts) {

        String SQL = "INSERT INTO Textos (Nome, Texto) VALUES (?, ?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();


            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, texts.getNome());
            preparedStatement.setString(2, texts.getTexto());

            preparedStatement.execute();

            System.out.println("Insert feito com sucesso");

            connection.close();

        } catch (Exception e) {
            System.out.println("Erro na conexao");
        }

    }

    public Texts[] getTexts() {
        String SQL = "SELECT * FROM TEXTOS";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();
            //List<Texts> texts = new ArrayList<>();
            Texts[] texts = new Texts[300];
            while (resultSet.next()) {
                int i = 0;
                String textName = resultSet.getString("nome");
                String text = resultSet.getString("texto");
                Texts t = new Texts(text, textName);
                texts[i] = t;
                i++;
            }
            System.out.println("success in select * texts");

            connection.close();

            return texts;
        } catch (Exception e) {

            System.out.println("fail in database connection");

            return null;
        }

    }

    public boolean isEmpty() {
        String SQL = "SELECT count (*)  FROM TEXTOS";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("success in counting");

            connection.close();
            int a = (int) resultSet.getLong(1);
            return(a>=10);
        } catch (Exception e){
            System.out.println("Erro ao conectar ao banco");
        }

    }
}

