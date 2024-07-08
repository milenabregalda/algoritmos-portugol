// Importações necessárias para os testes
import org.junit.jupiter.api.Test;
import com.exemplo.Produto;
import com.exemplo.ProdutoComNomeJaCadastradoException;
import com.exemplo.ProdutoRepositorio;
import static org.junit.jupiter.api.Assertions.assertThrows;

// Classe de teste para ProdutoRepositorio
public class ProdutoRepositorioTest {

    // Anotação @Test indica que o método é um caso de teste
    @Test
    public void testaAGravacaoDeUmProdutoJaCadastrado() {
        // Cria uma nova instância do repositório de produtos
        ProdutoRepositorio repositorio = new ProdutoRepositorio();

        // Cria um novo produto com nome e preço
        Produto produto = new Produto("Aparelho de barbear", 39.9);

        // Tenta salvar o produto no repositório
        try {
            repositorio.salvar(produto);
        } catch (ProdutoComNomeJaCadastradoException e) {
            // Ignora a exceção pois o objetivo é testar a exceção em seguida
        }

        // Verifica se ao tentar salvar novamente o mesmo produto, uma exceção é lançada
        // assertThrows espera que uma exceção do tipo ProdutoComNomeJaCadastradoException seja lançada
        assertThrows(ProdutoComNomeJaCadastradoException.class, () -> {
            repositorio.salvar(produto);
        });
    }
}
