package br.com.rpg.model;

public class Texts {

    private String texto;
        public Texts(String texto1){
            this.texto = texto1;
        }
        public Texts(Texts a){
            this.texto = a.getTexto();
        }

        public String getTexto(){
            return this.texto;
        }
        public void setTexto(String texto){
            this.texto = texto;
        }


}
