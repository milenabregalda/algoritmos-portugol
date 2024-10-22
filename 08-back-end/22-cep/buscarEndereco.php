<?php
// Função para buscar o endereço a partir do CEP
function buscarEnderecoPorCep($cep) {
    // Remove caracteres não numéricos do CEP
    $cep = preg_replace('/\D/', '', $cep);

    // Verifica se o CEP tem exatamente 8 dígitos
    if (strlen($cep) != 8) {
        return "CEP inválido."; // Retorna mensagem de erro se o CEP não for válido
    }

    // Define a URL da API do ViaCEP com o CEP informado
    $url = "https://viacep.com.br/ws/{$cep}/json/";

    // Faz a requisição à API e armazena a resposta
    $response = file_get_contents($url);

    // Verifica se houve erro na requisição (resposta falsa)
    if ($response === false) {
        return "Erro ao buscar o endereço."; // Retorna mensagem de erro
    }

    // Decodifica a resposta JSON em um array associativo
    $endereco = json_decode($response, true);

    // Verifica se o CEP retornou um endereço válido
    if (isset($endereco['erro']) && $endereco['erro']) {
        return "CEP não encontrado."; // Retorna mensagem de erro se o CEP não existir
    }

    // Retorna o array com os dados do endereço
    return $endereco;
}
?>
