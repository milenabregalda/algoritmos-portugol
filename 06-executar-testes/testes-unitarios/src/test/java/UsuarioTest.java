// Importações necessárias para os testes
import org.junit.jupiter.api.DynamicTest;
import org.junit.jupiter.api.TestFactory;

import com.exemplo.Usuario;
import com.exemplo.UsuarioInvalidoException;
import com.exemplo.UsuarioValidador;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertThrows;

// - TESTE DINÂMICO:
// Um teste dinâmico é um teste criado e executado em tempo de execução. Isso é útil quando você deseja gerar testes com base em dados ou condições específicas. */

public class UsuarioTest {

    // Anotação @TestFactory indica que o método gera testes dinâmicos
    @TestFactory
    public Collection<DynamicTest> testaSeUmUsuarioComDadosInvalidosLancaUmaExcecao() {
        // Lista de usuários com dados inválidos para teste
        List<Usuario> usuarios = new ArrayList<Usuario>() {{
            add(new Usuario(null, null)); // Usuário com nickname e senha nulos
            add(new Usuario(null, ""));   // Usuário com nickname nulo e senha vazia
            add(new Usuario("", null));   // Usuário com nickname vazio e senha nula
            add(new Usuario("", ""));     // Usuário com nickname e senha vazios
        }};
        
        // Coleção para armazenar os testes dinâmicos
        Collection<DynamicTest> dynamicTests = new ArrayList<>();
        
        // Para cada usuário na lista, cria um teste dinâmico
        usuarios.forEach(usuario -> {
            // Cria um teste dinâmico que verifica se a validação lança uma exceção para dados inválidos
            DynamicTest dynamicTest = DynamicTest.dynamicTest(
                "Testando usuario " + usuario.getNickname() + " " + usuario.getPassword(), 
                () -> {
                    // Verifica se uma exceção do tipo UsuarioInvalidoException é lançada
                    assertThrows(UsuarioInvalidoException.class, () -> {
                        UsuarioValidador.validar(usuario);
                    });
                }
            );
            // Adiciona o teste dinâmico à coleção
            dynamicTests.add(dynamicTest);
        });
        
        // Retorna a coleção de testes dinâmicos
        return dynamicTests;
    }
}
