package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class Usuario extends Pessoa {
    private String usuario;
    private String nickname;
    private String senha;
    
    public Usuario() {
    }

    public Usuario(String nome, String email, TipoPessoa tipoPessoa, String usuario, String nickname, String senha) {
        super(nome, email, tipoPessoa);
        this.usuario = usuario;
        this.nickname = nickname;
        this.senha = senha;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
