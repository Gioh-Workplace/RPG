package br.com.rpg.dao;

import br.com.rpg.config.ConnectionPoolConfig;
import br.com.rpg.model.Texts;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TextsDao {
    public void createTable()
    {
        String SQL = "CREATE TABLE IF NOT EXISTS Textos (ID INT AUTO_INCREMENT PRIMARY KEY, Texto VARCHAR(550) NOT NULL,op1 VARCHAR(255) null, ref1 INT null ,op2 VARCHAR(255), ref2 INT null,op3 VARCHAR(255), ref3 INT null, image VARCHAR(255) null, espada INT null, granada INT null, pocao INT null, armadura INT null, espadaDano INT null, granadaDano INT null, pocaoPts INT null, armaduraPts INT null)";

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

    public void createTexts(Texts texts)
    {
        String SQL = "INSERT INTO TEXTOS (Texto, op1, ref1, op2, ref2, op3, ref3, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, texts.getTexto());
            preparedStatement.setString(2, texts.getOP1());
            preparedStatement.setInt(3, texts.getREF1());
            preparedStatement.setString(4, texts.getOP2());
            preparedStatement.setInt(5, texts.getREF2());
            preparedStatement.setString(6, texts.getOP3());
            preparedStatement.setInt(7, texts.getREF3());
            preparedStatement.setString(8, texts.getImgem());
            preparedStatement.execute();



            System.out.println("Insert feito com sucesso");

            connection.close();
        }
        catch (Exception e)
        {
            System.out.println("Erro na conexao x");
            System.out.println(e.getMessage());
        }
    }

    public List<Texts> getTexts(int id)
    {
        String SQL = "SELECT * FROM Textos WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Texts> texts = new ArrayList<>();

            while (resultSet.next())
            {
                id = resultSet.getInt("ID");
                String text = resultSet.getString("texto");
                String op1 = resultSet.getString("op1");
                int ref1 = resultSet.getInt("ref1");
                String op2 = resultSet.getString("op2");
                int ref2 = resultSet.getInt("ref2");
                String op3 = resultSet.getString("op3");
                int ref3 = resultSet.getInt("ref3");
                String imagem = resultSet.getString("image");
                int espada = resultSet.getInt("espada");
                int granada = resultSet.getInt("granada");
                int pocao = resultSet.getInt("pocao");
                int armadura = resultSet.getInt("armadura");
                int espadaDano = resultSet.getInt("espadaDano");
                int granadaDano = resultSet.getInt("granadaDano");
                int pocaoPts = resultSet.getInt("pocaoPts");
                int armaduraPts = resultSet.getInt("armaduraPts");

                System.out.println("id: " + id);
                System.out.println("texto: " + text);
                System.out.println("op1: " + op1);

                texts.add(new Texts(id,text,op1,ref1,op2,ref2,op3,ref3,imagem, espada, granada, pocao, armadura, espadaDano, granadaDano, pocaoPts, armaduraPts));
            }

            System.out.println("success in select for id: " + id);

            connection.close();

            return texts;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return null;
        }
    }


    public List<Texts> listAllText()
    {
        String SQL = "SELECT * FROM Textos";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Texts> texts = new ArrayList<>();

            while (resultSet.next())
            {
                int id = resultSet.getInt("ID");
                String texto = resultSet.getString("texto");
                String op1 = resultSet.getString("op1");
                int ref1 = resultSet.getInt("ref1");
                String op2 = resultSet.getString("op2");
                int ref2 = resultSet.getInt("ref2");
                String op3 = resultSet.getString("op3");
                int ref3 = resultSet.getInt("ref3");
                String imagem = resultSet.getString("image");
                int espada = resultSet.getInt("espada");
                int granada = resultSet.getInt("granada");
                int pocao = resultSet.getInt("pocao");
                int armadura = resultSet.getInt("armadura");
                int espadaDano = resultSet.getInt("espadaDano");
                int granadaDano = resultSet.getInt("granadaDano");
                int pocaoPts = resultSet.getInt("pocaoPts");
                int armaduraPts = resultSet.getInt("armaduraPts");
                texts.add(new Texts(id,texto,op1,ref1,op2,ref2,op3,ref3,imagem, espada, granada, pocao, armadura, espadaDano, granadaDano, pocaoPts, armaduraPts));
            }

            System.out.println("success in select * texts");

            connection.close();

            return texts;

        } catch (Exception e) {

            System.out.println("Erro: " + e.getMessage());
            return null;
        }
    }

    public void updateText(Texts texts, int id)
    {
        String SQL = "UPDATE TEXTOS SET Texto = ?, op1 = ?, ref1 = ?, op2 = ?, ref2 = ?, op3 = ?, ref3 = ?, image = ?, espada = ?, granada = ?, pocao = ?, armadura = ?, espadaDano = ?, granadaDano = ?, pocaoPts = ?, armaduraPts = ? WHERE ID = ?";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, texts.getTexto());
            preparedStatement.setString(2, texts.getOP1());
            preparedStatement.setInt(3, texts.getREF1());
            preparedStatement.setString(4, texts.getOP2());
            preparedStatement.setInt(5, texts.getREF2());
            preparedStatement.setString(6, texts.getOP3());
            preparedStatement.setInt(7, texts.getREF3());
            preparedStatement.setString(8, texts.getImgem());
            preparedStatement.setInt(9, texts.getEspada());
            preparedStatement.setInt(10, texts.getGranada());
            preparedStatement.setInt(11, texts.getPocao());
            preparedStatement.setInt(12, texts.getArmadura());
            preparedStatement.setInt(13, texts.getEspadaDano());
            preparedStatement.setInt(14, texts.getGranadaDano());
            preparedStatement.setInt(15, texts.getPocaoPts());
            preparedStatement.setInt(16, texts.getArmaduraPts());
            preparedStatement.setInt(17, id);
            preparedStatement.execute();

            System.out.println("Update feito com sucesso");

            connection.close();
        }
        catch (Exception e)
        {
            System.out.println("Erro: " + e.getMessage());
        }
    }

    public void deleteText(int id)
    {
        String SQL = "DELETE FROM TEXTOS WHERE ID = ?";

        try
        {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();

            System.out.println("Delete feito com sucesso");

            connection.close();
        }
        catch (Exception e)
        {
            System.out.println("Erro: " + e.getMessage());
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

