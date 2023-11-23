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
        String SQL = "CREATE TABLE IF NOT EXISTS Textos (ID INT AUTO_INCREMENT PRIMARY KEY, Texto VARCHAR(550) NOT NULL,op1 VARCHAR(255), ref1 INT ,op2 VARCHAR(255), ref2 INT ,op3 VARCHAR(255), ref3 INT  )";

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
                createButtons();
                connection.close();

            } catch (Exception e) {
                System.out.println("Erro na conexao");
                System.out.println(e);
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
    public void createButtons(){
    String[]SQL={"UPDATE TEXTOS SET OP1='Lutar',REF1=2,OP2='Correr',REF2=4,OP3='Mochila',REF3=7 WHERE ID = 1",
                 "UPDATE TEXTOS SET OP1='Morte',REF1=3,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 2",
                 "UPDATE TEXTOS SET OP1='RANDOM',REF1=0,OP2='Escapar',REF2=5,OP3='Morte',REF3=6 WHERE ID = 4",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=12,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 4",
                 "UPDATE TEXTOS SET OP1='Morte',REF1=3,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 6",
                 "UPDATE TEXTOS SET OP1='Equipar',REF1=8,OP2='Guardar',REF2=8,OP3=null,REF3=null WHERE ID = 7",
                 "UPDATE TEXTOS SET OP1='Equipada',REF1=10,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 8",
                 "UPDATE TEXTOS SET OP1='Guardada',REF1=11,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 9",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=12,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 10",
                 "UPDATE TEXTOS SET OP1='Morte',REF1=3,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 11",
                 "UPDATE TEXTOS SET OP1='RANDOM1',REF1=21,OP2='RANDOM2',REF2=32,OP3=null,REF3=null WHERE ID = 12",
                 "UPDATE TEXTOS SET OP1='Pegar',REF1=14,OP2='Analisar',REF2=15,OP3='Sair',REF3=16 WHERE ID = 13",
                 "UPDATE TEXTOS SET OP1='Morte',REF1=3,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 14",
                 "UPDATE TEXTOS SET OP1='Pegar',REF1=14,OP2='Sair',REF2=16,OP3=null,REF3=null WHERE ID = 15",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=12,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 16",
                 "UPDATE TEXTOS SET OP1='Pegar',REF1=18,OP2='Analisar',REF2=20,OP3='Sair',REF3=19 WHERE ID = 17",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=12,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 18",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=12,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 19",
                 "UPDATE TEXTOS SET OP1='Pegar',REF1=18,OP2='Sair',REF2=19,OP3=null,REF3=null WHERE ID = 20",
                 "UPDATE TEXTOS SET OP1='Atacar',REF1=22,OP2='defender',REF2=26,OP3='Mochila',REF3=29 WHERE ID = 21",
                 "UPDATE TEXTOS SET OP1='Matar',REF1=23,OP2='Nocautear',REF2=24,OP3=null,REF3=null WHERE ID = 22",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 23",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 24",
                 "UPDATE TEXTOS SET OP1='Matar',REF1=23,OP2='Nocautear',REF2=24,OP3=null,REF3=null WHERE ID = 25",
                 "UPDATE TEXTOS SET OP1='Contra-Ataque',REF1=27,OP2='Mochila',REF2=30,OP3='Fugir',REF3=31 WHERE ID = 26",
                 "UPDATE TEXTOS SET OP1='Matar',REF1=28,OP2='Nocautear',REF2=29,OP3=null,REF3=null WHERE ID = 27",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 28",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 29",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 30",
                 "UPDATE TEXTOS SET OP1='RANDOM1',REF1=32,OP2='RANDOM2',REF2=33,OP3=null,REF3=null WHERE ID = 31",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 32",
                 "UPDATE TEXTOS SET OP1='Morte',REF1=3,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 33",
                 "UPDATE TEXTOS SET OP1='Descansar',REF1=35,OP2='Sair',REF2=37,OP3='Explorar',REF3=39 WHERE ID = 34",
                 "UPDATE TEXTOS SET OP1='Next',REF1=36,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 35",
                 "UPDATE TEXTOS SET OP1='Morte',REF1=3,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 36",
                 "UPDATE TEXTOS SET OP1='Descansar',REF1=35,OP2='Explorar',REF2=38,OP3=null,REF3=null WHERE ID = 37",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 38",
                 "UPDATE TEXTOS SET OP1='NEXT',REF1=40,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 39",
                 "UPDATE TEXTOS SET OP1='Matar- Espada',REF1=41,OP2='Matar - Faca',REF2=42,OP3='Poupar',REF3=43 WHERE ID = 40",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 41",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 42",
                 "UPDATE TEXTOS SET OP1='Sucesso',REF1=44,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 43",
                 "UPDATE TEXTOS SET OP1='RANDOM1',REF1=45,OP2='RANDOM2',REF2=46,OP3='RANDOM3',REF3=47 WHERE ID = 44",
                 "UPDATE TEXTOS SET OP1='Relogio',REF1=48,OP2='Fenix',REF2=49,OP3='Praia',REF3=49 WHERE ID = 45",
                 "UPDATE TEXTOS SET OP1='Jupiter',REF1=49,OP2='Apolo',REF2=49,OP3='Mercurio',REF3=48 WHERE ID = 46",
                 "UPDATE TEXTOS SET OP1='Imaginação',REF1=49,OP2='Mapa',REF2=49,OP3='Projeção',REF3=49 WHERE ID = 47",
                 "UPDATE TEXTOS SET OP1='ACERTO',REF1=51,OP2='ERRO',REF2=49,OP3=null,REF3=null WHERE ID = 48",
                 "UPDATE TEXTOS SET OP1='NEXT',REF1=50,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 49",
                 "UPDATE TEXTOS SET OP1='NEXT',REF1=52,OP2=null,REF2=null,OP3=null,REF3=null WHERE ID = 51",
        };
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            for(int i=0;i<SQL.length;i++) {
                PreparedStatement preparedStatement = connection.prepareStatement(SQL[i]);

                preparedStatement.execute();

                System.out.println("Insert feito com sucesso");
            }
            connection.close();

        } catch (Exception e) {
            System.out.println("Erro na conexao");
            System.out.println(e);
        }
    }
}

