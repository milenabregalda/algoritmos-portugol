import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

import com.exemplo.EmailJaCadastradoException;
import com.exemplo.JpaUtil;
import com.exemplo.Usuario;

import javax.persistence.EntityManager;

import static org.junit.jupiter.api.Assertions.assertThrows;

// Classe de teste para verificar se um email já cadastrado lança uma exceção apropriada
public class TestaCadastroDeUsuarioJaCadastrado {
    private EntityManager em;

    // Teste que verifica se uma exceção é lançada ao tentar persistir um usuário com email já cadastrado
    @Test
    public void testaSeOArquivoDeLogEValido() {
        // Obtém uma instância do EntityManager
        em = JpaUtil.getEntityManager();

        // Cria um novo usuário com email e senha
        Usuario usuario = new Usuario("test@example.com", "password");

        // Verifica se a exceção EmailJaCadastradoException é lançada ao persistir o usuário
        assertThrows(EmailJaCadastradoException.class, () -> {
            em.persist(usuario);
        });

        // Fecha o EntityManager
        em.close();
    }

    // Método que é executado após cada teste para limpar os recursos
    @AfterEach
    public void tearDown() {
        // Define o EntityManager como null para liberar a memória
        em = null;
    }
}
