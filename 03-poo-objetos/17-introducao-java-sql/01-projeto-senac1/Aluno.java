package senac1;

// Aula de 31/10/2023 - Introdução breve à integração Java e SQL

import java.sql.ResultSet;
import java.util.ArrayList;

// + Aula de 01/11/2023

public class Aluno extends Pessoa {

    private String matricula;

    public Aluno(String nome, String email, String matricula){
        super(nome, email);
        this.matricula = matricula;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    
    public void cadastrar(){
        String sql =  "INSERT INTO aluno (nome, email, matricula) VALUES ( "
                    + " '" + this.getNome() +   "' ,  "
                    + " '" + this.getEmail() +  "' ,  "
                    + "  " + this.getMatricula() +"  ) ";
        Conexao.executar( sql );
    }
    
    public void editar(){
        String sql =  "UPDATE aluno SET  "
                    + " nome    = '" + this.getNome() +   "' ,  "
                    + " email   = '" + this.getEmail() +  "' ,  "
                    + " matricula =  " + this.getMatricula() +"     "
                    + " WHERE idAluno = " + this.getId();
        Conexao.executar( sql );
    }
    
    public static void excluir(int idAluno){
        String sql =  "DELETE FROM aluno WHERE idAluno = " + idAluno;
        Conexao.executar( sql );
    }
    
    
    public static ArrayList<Aluno> getAlunos(){
        ArrayList<Aluno> lista = new ArrayList<>();
        
        String sql = "SELECT idAluno, nome, email, matricula FROM aluno ORDER BY nome ";
        
        ResultSet rs = Conexao.consultar( sql );
        
        if( rs != null){
            
            try{
                while ( rs.next() ) {                
                    String nome = rs.getString( 2 );
                    String email = rs.getString( "email" );
                    String matricula = rs.getString("matricula");
                    Aluno aluno = new Aluno(nome, email, matricula);
                    aluno.setId( rs.getInt( "idAluno" ) );
                    lista.add( aluno );
                }
            }catch(Exception e){
                
            }
            
        }
     
        return lista;
    }
    
    @Override
    public void dados(){
        super.dados();
        System.out.println("Matricula: " + getMatricula());
        System.out.println("#########################");
    }
}
