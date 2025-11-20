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
