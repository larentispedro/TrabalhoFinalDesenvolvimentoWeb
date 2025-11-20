async function enviarContato(event) {
  event.preventDefault();

  // Pegando dados manualmente com getElementById
  let nome = document.getElementById("contato-nome").value;
  let email = document.getElementById("contato-email").value;
  let mensagem = document.getElementById("contato-mensagem").value;

  let dados = new FormData();
  dados.append("nome", nome);
  dados.append("email", email);
  dados.append("mensagem", mensagem);

  let resposta = await fetch("./back-php/contato-inserir.php", {
    method: "POST",
    body: dados,
  });

  let retorno = await resposta.json();

  if (retorno.status === "ok") {
    alert("Contato enviado com sucesso!");
    event.target.reset();
  } else {
    alert("Erro ao enviar.");
  }
}

async function enviarOrcamento(event, servico) {
  event.preventDefault();

  // Pegando dados manualmente com getElementById
  let nome = document.getElementById("orc-nome").value;
  let email = document.getElementById("orc-email").value;
  let telefone = document.getElementById("orc-telefone").value;
  let endereco = document.getElementById("orc-endereco").value;
  let cidade = document.getElementById("orc-cidade").value;
  let uf = document.getElementById("orc-uf").value;
  let data_desejada = document.getElementById("orc-data").value;
  let observacoes = document.getElementById("orc-observacoes").value;

  let dados = new FormData();
  dados.append("nome", nome);
  dados.append("email", email);
  dados.append("telefone", telefone);
  dados.append("endereco", endereco);
  dados.append("cidade", cidade);
  dados.append("uf", uf);
  dados.append("data_desejada", data_desejada);
  dados.append("observacoes", observacoes);
  dados.append("servico", servico);

  let resposta = await fetch("./back-php/orcamento-inserir.php", {
    method: "POST",
    body: dados,
  });

  let retorno = await resposta.json();

  if (retorno.status === "ok") {
    alert("Orçamento enviado com sucesso!");
    event.target.reset();
  } else {
    alert("Erro ao enviar.");
  }
}

async function excluirContato(id) {
  if (!confirm("Deseja excluir?")) return;

  let resposta = await fetch(`./back-php/contato-excluir.php?id=${id}`);
  let texto = await resposta.text();

  if (texto.trim() === "ok") {
    alert("Contato excluído!");
    carregarContatos();
  } else {
    alert("ERRO: " + texto);
  }
}

function aplicarMascaraTelefone(input) {
    let v = input.value.replace(/\D/g, "");

    if (v.length > 11) v = v.slice(0, 11);

    if (v.length > 10) {
        // (49) 99836-8786
        v = v.replace(/(\d{2})(\d{5})(\d{4})/, "($1) $2-$3");
    } else if (v.length > 6) {
        // (49) 9983-6789
        v = v.replace(/(\d{2})(\d{4})(\d{0,4})/, "($1) $2-$3");
    } else if (v.length > 2) {
        // (49) 9983
        v = v.replace(/(\d{2})(\d{0,5})/, "($1) $2");
    } else {
        // (49
        v = v.replace(/(\d{0,2})/, "($1");
    }

    input.value = v;
}

