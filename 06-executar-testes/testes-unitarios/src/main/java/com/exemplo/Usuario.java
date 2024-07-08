package com.exemplo;

public class Usuario {
    private String nickname;
    private String password;

    public Usuario(String nickname, String password) {
        this.nickname = nickname;
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public String getPassword() {
        return password;
    }
}
