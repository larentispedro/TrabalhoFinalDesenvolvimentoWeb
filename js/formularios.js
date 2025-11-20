async function enviarOrcamento(event, servico) {
  event.preventDefault();

  let dados = new FormData(event.target);
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

async function enviarOrcamento(event, servico) {
  event.preventDefault();
  let dados = new FormData(event.target);
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
