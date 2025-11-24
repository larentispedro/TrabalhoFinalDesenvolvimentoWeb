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


## 🛠 Tecnologias Utilizadas

- **HTML5**
- **CSS3**
- **Bootstrap 5.3**
- **JavaScript (Fetch API)**
- **PHP 8 + PDO**
- **MySQL**
- **XAMPP**
- **Font Awesome Icons**


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


### 🖥 **3. Painel Administrativo 
O painel inclui:

✔ Sidebar fixa   
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

Também pode ser acessado pelo botão "painel administrativo" no final da página principal.


## 👨‍💻 Autor
**Pedro Larentis**  
Curso: *Sistemas de Informação*  
Disciplina: *Fundamentos ao Desenvolvimento Web*  
Instituição: **UNOESC**  



