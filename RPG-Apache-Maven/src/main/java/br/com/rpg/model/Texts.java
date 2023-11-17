package br.com.rpg.model;

public class Texts {

    private String texto;
    private int id;
        public Texts(String texto1){
            this.texto = texto1;
        }
        public Texts(String texto, int id){
            this.texto = texto;
            this.id = id;
        }

        public String getTexto(){
            return this.texto;
        }
        public void setTexto(String texto){
            this.texto = texto;
        }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
