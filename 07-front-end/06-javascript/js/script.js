// Esta é uma função nominada que imprimirá naquela tela uma caixa de alerta escrito "Olá mundo!"
function ola() {
    alert("Olá mundo!");
}

function validaCampo() {
    // if para verificar se o campo nome do formulário form1 está vazio ou com menos de 10 caracteres
    if(document.form.email.value == "" || document.form.email.value.length < 10) {
        // alert trazendo a informação de que o campo não foi preenchido corretamente:
        alert("Preencha campo e-mail corretamente!");
        // focus para levar à caixa de texto que não foi preenchida corretamente:
        document.form.email.focus();
        // sem o return false, entra numa repetição de caixas de alert e perde a função do focus:
        return false;
    }

    if(document.form.password.value == "" && document.form.password.value.length < 5) {
        // alert trazendo a informação de que o campo não foi preenchido corretamente:
        alert("Preencha o campo de senha corretamente!");
        // focus para levar à caixa de texto que não foi preenchida corretamente:
        document.form.password.focus();
        // sem o return false, entra numa repetição de caixas de alert e perde a função do focus:
        return false;
    }
}