package br.com.rpg.model;

public class Usuario {
    private String username;
    private String email;
    private String senha;

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
}
