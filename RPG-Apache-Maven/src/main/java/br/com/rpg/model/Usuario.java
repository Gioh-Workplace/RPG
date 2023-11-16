package br.com.rpg.model;

public class Usuario {

    private int id;
    private String username;
    private String email;
    private String senha;

    private int pontuacao;

    public Usuario() {
    }

    public Usuario(int id, String username, String email, String senha, int pontuacao) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.senha = senha;
        this.pontuacao = pontuacao;
    }

    public Usuario(String username, String email, String senha) {
        this.username = username;
        this.email = email;
        this.senha = senha;
    }


    public Usuario(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(int pontuacao) {
        this.pontuacao = pontuacao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
