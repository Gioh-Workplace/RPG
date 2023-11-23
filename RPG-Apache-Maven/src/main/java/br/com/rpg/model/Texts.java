package br.com.rpg.model;

public class Texts {

    private int id;
    private String texto;
    private String 	OP1;
    private int REF1;
    private String 	OP2;
    private int REF2;
    private String 	OP3;
    private int REF3;
    private String imgem;

    public Texts(String texto1){
        this.texto = texto1;
    }
    public Texts(String texto, int id){
        this.texto = texto;
        this.id = id;
    }

    public Texts(int id,String texto, String OP1, int REF1, String OP2, int REF2, String OP3, int REF3, String imgem)
    {
        this.id = id;
        this.texto = texto;
        this.OP1 = OP1;
        this.REF1 = REF1;
        this.OP2 = OP2;
        this.REF2 = REF2;
        this.OP3 = OP3;
        this.REF3 = REF3;
        this.imgem = imgem;
    }

    public Texts(String texto, String OP1, int REF1, String OP2, int REF2, String OP3, int REF3, String imgem)
    {
        this.texto = texto;
        this.OP1 = OP1;
        this.REF1 = REF1;
        this.OP2 = OP2;
        this.REF2 = REF2;
        this.OP3 = OP3;
        this.REF3 = REF3;
        this.imgem = imgem;
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

    public void setOP1(String OP1) {
        this.OP1 = OP1;
    }

    public String getOP1() {
        return OP1;
    }

    public void setREF1(int REF1) {
        this.REF1 = REF1;
    }

    public int getREF1() {
        return REF1;
    }

    public void setOP2(String OP2) {
        this.OP2 = OP2;
    }

    public String getOP2() {
        return OP2;
    }

    public void setREF2(int REF2) {
        this.REF2 = REF2;
    }

    public int getREF2() {
        return REF2;
    }

    public void setOP3(String OP3) {
        this.OP3 = OP3;
    }

    public String getOP3() {
        return OP3;
    }

    public void setREF3(int REF3) {
        this.REF3 = REF3;
    }

    public int getREF3() {
        return REF3;
    }

    public String getImgem() {
        return imgem;
    }

    public void setImgem(String imgem) {
        this.imgem = imgem;
    }

}
