package br.com.rpg.model;

public class Texts {
    private final String nome;
    private final String texto;
        public Texts(String texto1,String nome){
            this.texto = texto1;
            this.nome = nome;

        }

        public String getTexto(){
            return this.texto;
        }
        public String getNome() {return this.nome;}


}
