# TrabalhoFinalDesenvolvimentoWeb
# 📊 F&P Contábil — Sistema Web com Painel Administrativo  
Projeto desenvolvido para a disciplina **Fundamentos ao Desenvolvimento Web**, utilizando HTML, CSS, JavaScript e PHP com integração ao MySQL.


## 📌 Objetivo do Projeto
Criar um site institucional para um escritório de contabilidade com:

✔ Página principal completa  
✔ Formulário funcional de **Contato**  
✔ Formulários funcionais de **Orçamentos** (3 serviços diferentes)  
✔ Inserção em banco de dados (MySQL)  
✔ Painel administrativo com listagem e exclusão de registros  
✔ Estrutura organizada em pastas  
✔ Banco exportado (.sql) conforme solicitado na prova

Este projeto **implementa 100% dos requisitos da atividade A1.3**.


## 🛠 Tecnologias Utilizadas

- **HTML5**
- **CSS3**
- **Bootstrap 5.3**
- **JavaScript (Fetch API)**
- **PHP 8 + PDO**
- **MySQL**
- **XAMPP**
- **Font Awesome Icons**


## 📁 Estrutura de Pastas

TrabalhoFinalDesenvolvimentoWeb/
│
├── admin/
│ ├── dashboard.php
│ ├── contatos.php
│ ├── orcamentos.php
│
├── back-php/
│ ├── conexao.php
│ ├── contato-inserir.php
│ ├── contato-listar.php
│ ├── contato-excluir.php
│ ├── orcamento-inserir.php
│ ├── orcamentos-listar.php
│ ├── orcamento-excluir.php
│
├── js/
│ └── formularios.js
│
├── servicos/
│ ├── servico1.html
│ ├── servico2.html
│ ├── servico3.html
│
├── database/
│ └── fp_contabil.sql ← arquivo exportado do phpMyAdmin
│
├── index.html
├── style.css
└── README.md


## 🧩 Funcionalidades Principais

### 📬 **1. Envio de Contato**
- Formulário presente no final da página principal  
- Dados enviados via JavaScript com `fetch()`  
- Inserção no banco via `contato-inserir.php`  
- Exibição no painel admin → **admin/contatos.php**  
- Possibilidade de excluir registros  



### 🧾 **2. Solicitação de Orçamentos**
Cada serviço tem seu próprio modal de orçamento:

- Abertura de empresas  
- Consultoria tributária  
- Gestão financeira  

Todos enviam:

- Nome  
- E-mail  
- Telefone (com máscara)  
- Endereço  
- Cidade / UF  
- Data desejada  
- Observações  
- Serviço selecionado  

Gravado via `orcamento-inserir.php`.

Listagem completa disponível em:

👉 `admin/orcamentos.php`  
Com opção de excluir registros.


### 🖥 **3. Painel Administrativo (Tema Dark)**  
O painel inclui:

✔ Sidebar fixa  
✔ Tema escuro  
✔ Tabelas dinâmicas  
✔ Botões com ícones  
✔ Exclusão de registros  
✔ Dashboard com números gerais (opcional)  



## 🗄 Banco de Dados

O banco está no arquivo:

database/fp_contabil.sql


### Ele contém:

- Tabela **contatos**
- Tabela **orcamentos**
- Estrutura + AUTO_INCREMENT
- Charset UTF-8


## ▶️ Como Rodar o Projeto no XAMPP

1. Copie a pasta **TrabalhoFinalDesenvolvimentoWeb** para:
C:\xampp\htdocs\


2. Inicie:
- Apache
- MySQL

3. Acesse no navegador:
http://localhost/TrabalhoFinalDesenvolvimentoWeb/index.html


4. Painel admin:
http://localhost/TrabalhoFinalDesenvolvimentoWeb/admin/dashboard.html


## 📸 Prints do Sistema (adicione depois)

> Você deve adicionar aqui algumas imagens do site:  
- Página inicial  
- Formulário de contato  
- Modal de orçamento  
- Painel admin contatos  
- Painel admin orçamentos  


## 👨‍💻 Autor
**Pedro Larentis**  
Curso: *Sistemas de Informação*  
Disciplina: *Fundamentos ao Desenvolvimento Web*  
Instituição: **UNOESC**  


## ✔ Requisitos da Avaliação A1.3 — Atendidos

- [x] Criar site institucional  
- [x] Criar duas seções → **Contato** e **Orçamento**  
- [x] Criar tabelas no MySQL  
- [x] Implementar INSERT via PHP  
- [x] Implementar listagem dos dados  
- [x] Exibir tudo em páginas HTML próprias  
- [x] Exportar banco `.sql`  
- [x] Organização de arquivos  
- [x] Painel administrativo (extra)  
- [x] Exclusão de registros (extra)  
- [x] Máscara de telefone (extra)  


## 🎉 Conclusão

Este projeto apresenta um sistema completo, funcional e organizado, cumprindo integralmente os requisitos da prova e incluindo funcionalidades adicionais que enriquecem a entrega, como painel administrativo, tema dark e controles extras.

