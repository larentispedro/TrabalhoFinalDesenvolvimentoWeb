-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/11/2025 às 20:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fp_contabil`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `mensagem`, `data_envio`) VALUES
(4, 'Pedro Augusto Larentis Maldaner', 'pedro.maldaner@triadeengenharia.com.br', 'Oi tudo bem \r\n', '2025-11-20 16:54:41'),
(5, 'Fernanda', 'fernanda@fernanda.com.br', 'Oi, tudo bem? ', '2025-11-20 17:48:45'),
(8, 'Suzana', 'suzana@gmail.com.br', 'Gostaria de saber como faz para trabalhar com vocês ', '2025-11-20 19:04:48'),
(9, 'Lucas Silva', 'lucas.silva@gmail.com', 'Gostaria de saber se vocês atendem aos sábados.', '2025-11-20 19:33:30'),
(10, 'Mariana Oliveira', 'mari.oliveira@hotmail.com', 'Preciso de ajuda para emitir a segunda via do boleto.', '2025-11-20 19:33:30'),
(11, 'Roberto Carlos', 'roberto.c@uol.com.br', 'O site apresentou erro ao tentar finalizar o cadastro.', '2025-11-20 19:33:30'),
(12, 'Fernanda Souza', 'fernanda.souza@outlook.com', 'Adorei o atendimento da equipe, muito atenciosos!', '2025-11-20 19:33:30'),
(13, 'Pedro Henrique', 'pedro.h@gmail.com', 'Vocês têm algum plano de fidelidade?', '2025-11-20 19:33:30'),
(14, 'Juliana Costa', 'ju.costa@yahoo.com.br', 'Gostaria de sugerir a inclusão de pagamento via PIX no site.', '2025-11-20 19:33:30'),
(15, 'Carlos Eduardo', 'cadu.edu@terra.com.br', 'Estou aguardando o retorno do meu orçamento há 2 dias.', '2025-11-20 19:33:30'),
(16, 'Patricia Gomes', 'pati.gomes@gmail.com', 'Como faço para trabalhar com vocês? Onde envio currículo?', '2025-11-20 19:33:30'),
(17, 'Rafael Almeida', 'rafa.almeida@live.com', 'O telefone de contato de vocês só dá ocupado.', '2025-11-20 19:33:30'),
(18, 'Bruna Ferreira', 'bruna.ferreira@ig.com.br', 'Tenho uma dúvida sobre a garantia dos serviços.', '2025-11-20 19:33:30'),
(19, 'Thiago Martins', 'thiago.m@empresa.com', 'Gostaria de uma proposta para parceria comercial.', '2025-11-20 19:33:30'),
(20, 'Camila Rocha', 'camila.rocha@gmail.com', 'Fiz um contato pelo WhatsApp e não me responderam.', '2025-11-20 19:33:30'),
(21, 'Gabriel Santos', 'gabriel.santos@hotmail.com', 'Vocês possuem escritório físico em Chapecó?', '2025-11-20 19:33:30'),
(22, 'Larissa Mendes', 'lari.mendes@yahoo.com', 'O serviço prestado foi excelente, recomendo!', '2025-11-20 19:33:30'),
(23, 'Felipe Oliveira', 'felipe.o@gmail.com', 'Não recebi a confirmação do meu agendamento.', '2025-11-20 19:33:30'),
(24, 'Vanessa Dias', 'vanessa.dias@outlook.com', 'Qual o e-mail do setor financeiro?', '2025-11-20 19:33:30'),
(25, 'Ricardo Nunes', 'ricardo.nunes@uol.com.br', 'Preciso cancelar meu contrato, como procedo?', '2025-11-20 19:33:30'),
(26, 'Aline Barbosa', 'aline.barbosa@gmail.com', 'Esqueci minha senha de acesso à área do cliente.', '2025-11-20 19:33:30'),
(27, 'Eduardo Moreira', 'edu.moreira@live.com', 'Vocês fazem consultoria online?', '2025-11-20 19:33:30'),
(28, 'Sofia Ribeiro', 'sofia.ribeiro@hotmail.com', 'Meu cartão foi cobrado duas vezes, preciso de estorno.', '2025-11-20 19:33:30'),
(29, 'Guilherme Pinto', 'gui.pinto@gmail.com', 'O sistema de vocês é muito intuitivo, parabéns.', '2025-11-20 19:33:30'),
(30, 'Beatriz Carvalho', 'bia.carvalho@terra.com.br', 'Gostaria de alterar meu endereço de cobrança.', '2025-11-20 19:33:30'),
(31, 'Matheus Correia', 'matheus.c@bol.com.br', 'O link que me enviaram por e-mail não funciona.', '2025-11-20 19:33:30'),
(32, 'Letícia Teixeira', 'le.teixeira@yahoo.com.br', 'Quais são os documentos necessários para abertura de conta?', '2025-11-20 19:33:30'),
(33, 'Gustavo Araujo', 'gustavo.araujo@gmail.com', 'Vocês atendem empresas do Simples Nacional?', '2025-11-20 19:33:30'),
(34, 'Isabela Castro', 'isa.castro@hotmail.com', 'Fiz o pagamento ontem, já constou para vocês?', '2025-11-20 19:33:30'),
(35, 'Rodrigo Farias', 'rodrigo.farias@uol.com.br', 'O site não está carregando no meu celular.', '2025-11-20 19:33:30'),
(36, 'Natália Lopes', 'nati.lopes@outlook.com', 'Por favor, remover meu e-mail da lista de promoções.', '2025-11-20 19:33:30'),
(37, 'Leonardo Cardoso', 'leo.cardoso@gmail.com', 'Preciso falar com o gerente.', '2025-11-20 19:33:30'),
(38, 'Renata Vieira', 'renata.vieira@live.com', 'Gostaria de fazer uma reclamação sobre um funcionário.', '2025-11-20 19:33:30'),
(39, 'Vitor Cruz', 'vitor.cruz@yahoo.com', 'Onde encontro a tabela de preços atualizada?', '2025-11-20 19:33:30'),
(40, 'Lorena Silva', 'lorena.silva@bol.com.br', 'Tem desconto para pagamento à vista no boleto?', '2025-11-20 19:33:30'),
(41, 'André Rezende', 'andre.rezende@gmail.com', 'Vocês prestam serviço para órgãos públicos?', '2025-11-20 19:33:30'),
(42, 'Cláudia Peixoto', 'claudia.p@hotmail.com', 'Estou com dificuldades para preencher o formulário.', '2025-11-20 19:33:30'),
(43, 'Marcelo Antunes', 'marcelo.antunes@terra.com.br', 'Muito satisfeito com a agilidade da entrega.', '2025-11-20 19:33:30'),
(44, 'Yasmin Duarte', 'yasmin.duarte@gmail.com', 'Qual a diferença entre o plano Básico e o Pro?', '2025-11-20 19:33:30'),
(45, 'Caio Batista', 'caio.batista@outlook.com', 'Recebi uma cobrança indevida no meu e-mail.', '2025-11-20 19:33:30'),
(46, 'Alice Moraes', 'alice.moraes@uol.com.br', 'Poderiam me enviar o portfólio em PDF?', '2025-11-20 19:33:30'),
(47, 'Henrique Siqueira', 'henrique.s@live.com', 'O chat online estava offline quando tentei contato.', '2025-11-20 19:33:30'),
(48, 'Luana Ramos', 'luana.ramos@gmail.com', 'Gostaria de sugerir uma melhoria no painel do usuário.', '2025-11-20 19:33:30'),
(49, 'Diego Macedo', 'diego.macedo@yahoo.com.br', 'Vocês ainda estão localizados no mesmo endereço?', '2025-11-20 19:33:30'),
(50, 'Bianca Nogueira', 'bianca.nog@hotmail.com', 'Preciso atualizar meu telefone de cadastro.', '2025-11-20 19:33:30'),
(51, 'Fabio Guimarães', 'fabio.gui@bol.com.br', 'Vocês trabalham com horários agendados?', '2025-11-20 19:33:30'),
(52, 'Helena Campos', 'helena.campos@gmail.com', 'Não consigo fazer login com minha conta do Facebook.', '2025-11-20 19:33:30'),
(53, 'Daniel Freitas', 'daniel.freitas@terra.com.br', 'O serviço inclui suporte técnico pós-venda?', '2025-11-20 19:33:30'),
(54, 'Mônica Viana', 'monica.viana@outlook.com', 'Quanto tempo demora para a aprovação do cadastro?', '2025-11-20 19:33:30'),
(55, 'Alexandre Monteiro', 'ale.monteiro@uol.com.br', 'Gostei muito do novo layout do site.', '2025-11-20 19:33:30'),
(56, 'Priscila Lemos', 'pri.lemos@gmail.com', 'Estou tentando recuperar minha senha mas o e-mail não chega.', '2025-11-20 19:33:30'),
(57, 'Sérgio Cavalcanti', 'sergio.c@live.com', 'Gostaria de agendar uma visita técnica presencial.', '2025-11-20 19:33:30'),
(58, 'Júlia Ramos', 'ju.ramos@gmail.com', 'O atendimento foi rápido e eficiente, obrigado.', '2025-11-20 19:33:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `data_desejada` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `servico` varchar(150) NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `nome`, `email`, `telefone`, `endereco`, `cidade`, `uf`, `data_desejada`, `observacoes`, `servico`, `data_envio`) VALUES
(1, 'João da Silva', 'joao.silva@email.com', '(48) 99988-7766', 'Rua das Flores, 123', 'Florianópolis', 'SC', '2025-12-01', 'Orçamento urgente para abertura de MEI.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(2, 'Maria Oliveira', 'maria.oliveira@test.com', '(47) 98877-6655', 'Av. Brasil, 500', 'Balneário Camboriú', 'SC', '2025-11-25', 'Preciso regularizar pendências fiscais.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(3, 'Carlos Pereira', 'carlos.pereira@domain.com', '(49) 97766-5544', 'Rua Sete de Setembro, 89', 'Chapecó', 'SC', '2025-12-10', NULL, 'Gestão Financeira', '2025-11-20 19:31:40'),
(4, 'Ana Santos', 'ana.santos@webmail.com', '(48) 99911-2233', 'Rua XV de Novembro, 100', 'Blumenau', 'SC', '2025-11-30', 'Gostaria de saber sobre folha de pagamento.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(5, 'Pedro Souza', 'pedro.souza@email.com', '(47) 99122-3344', 'Rua Anita Garibaldi, 45', 'Joinville', 'SC', '2026-01-15', 'Projeto para nova filial.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(6, 'Fernanda Lima', 'fernanda.lima@site.com', '(48) 98833-4455', 'Av. Beira Mar, 2020', 'São José', 'SC', '2025-12-05', 'Apuração de tributos em atraso.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(7, 'Rafael Costa', 'rafael.costa@provider.com', '(49) 99944-5566', 'Rua Marechal Deodoro, 300', 'Lages', 'SC', '2025-12-20', NULL, 'Abertura e Legalização', '2025-11-20 19:31:40'),
(8, 'Juliana Alves', 'juliana.alves@test.com', '(47) 98855-6677', 'Rua Brusque, 78', 'Itajaí', 'SC', '2025-11-28', 'Planejamento financeiro anual.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(9, 'Lucas Martins', 'lucas.martins@email.com', '(48) 99966-7788', 'Rua Araranguá, 55', 'Criciúma', 'SC', '2025-12-12', 'Mudança de regime tributário.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(10, 'Beatriz Rocha', 'beatriz.rocha@domain.com', '(47) 99177-8899', 'Av. Atlântica, 1500', 'Itapema', 'SC', '2026-02-01', 'Constituição de LTDA.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(11, 'Gustavo Dias', 'gustavo.dias@webmail.com', '(49) 98888-0011', 'Rua Videira, 90', 'Videira', 'SC', '2025-12-15', NULL, 'Gestão Financeira', '2025-11-20 19:31:40'),
(12, 'Camila Nunes', 'camila.nunes@site.com', '(48) 99900-1122', 'Rua Pedra Branca, 10', 'Palhoça', 'SC', '2025-11-29', 'Revisão de SPED.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(13, 'Bruno Ferreira', 'bruno.ferreira@provider.com', '(47) 99111-2233', 'Rua Jaraguá, 400', 'Jaraguá do Sul', 'SC', '2025-12-08', 'Alteração contratual.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(14, 'Mariana Gomes', 'mariana.gomes@test.com', '(48) 98822-3344', 'Av. Tubarão, 56', 'Tubarão', 'SC', '2025-12-18', NULL, 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(15, 'Rodrigo Lopes', 'rodrigo.lopes@email.com', '(49) 99933-4455', 'Rua Concórdia, 12', 'Concórdia', 'SC', '2026-01-10', 'Controle de fluxo de caixa.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(16, 'Larissa Mendes', 'larissa.mendes@domain.com', '(47) 99144-5566', 'Rua Brusque, 230', 'Brusque', 'SC', '2025-12-03', 'Registro de marca e alvará.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(17, 'Felipe Cardoso', 'felipe.cardoso@webmail.com', '(48) 98855-6677', 'Rua Biguaçu, 88', 'Biguaçu', 'SC', '2025-11-26', 'Cálculo de rescisões.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(18, 'Patricia Araujo', 'patricia.araujo@site.com', '(49) 99966-7788', 'Rua Caçador, 77', 'Caçador', 'SC', '2025-12-22', NULL, 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(19, 'Thiago Barbosa', 'thiago.barbosa@provider.com', '(47) 99177-8899', 'Rua Indaial, 34', 'Indaial', 'SC', '2026-01-05', 'Transformação de MEI para ME.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(20, 'Vanessa Castro', 'vanessa.castro@test.com', '(48) 98888-9900', 'Av. Imbituba, 101', 'Imbituba', 'SC', '2025-12-14', 'Consultoria sobre eSocial.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(21, 'Ricardo Pinto', 'ricardo.pinto@email.com', '(49) 99900-1122', 'Rua Joaçaba, 22', 'Joaçaba', 'SC', '2025-11-27', NULL, 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(22, 'Aline Correia', 'aline.correia@domain.com', '(47) 99111-2233', 'Rua Navegantes, 500', 'Navegantes', 'SC', '2025-12-02', 'Baixa de empresa.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(23, 'Eduardo Teixeira', 'eduardo.teixeira@webmail.com', '(48) 98822-3344', 'Rua Gaspar, 99', 'Gaspar', 'SC', '2025-12-16', 'Planejamento tributário 2026.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(24, 'Sofia Moraes', 'sofia.moraes@site.com', '(49) 99933-4455', 'Rua Xanxerê, 45', 'Xanxerê', 'SC', '2026-01-20', 'Terceirização do financeiro.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(25, 'Leonardo Ribeiro', 'leonardo.ribeiro@provider.com', '(47) 99144-5566', 'Rua Rio do Sul, 120', 'Rio do Sul', 'SC', '2025-12-06', NULL, 'Abertura e Legalização', '2025-11-20 19:31:40'),
(26, 'Gabriela Carvalho', 'gabriela.carvalho@test.com', '(48) 98855-6677', 'Rua Içara, 33', 'Içara', 'SC', '2025-12-19', 'Gestão de admissões.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(27, 'Marcos Vieira', 'marcos.vieira@email.com', '(49) 99966-7788', 'Rua Canoinhas, 67', 'Canoinhas', 'SC', '2025-11-28', 'Parcelamento de dívidas fiscais.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(28, 'Renata Cruz', 'renata.cruz@domain.com', '(47) 99177-8899', 'Rua Camboriú, 89', 'Camboriú', 'SC', '2026-01-08', 'Abertura de filial.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(29, 'Vitor Macedo', 'vitor.macedo@webmail.com', '(48) 98888-0011', 'Rua São Bento, 21', 'São Bento do Sul', 'SC', '2025-12-09', NULL, 'Gestão Financeira', '2025-11-20 19:31:40'),
(30, 'Helena Freitas', 'helena.freitas@site.com', '(49) 99900-2233', 'Rua Curitibanos, 55', 'Curitibanos', 'SC', '2025-12-21', 'Recuperação de créditos tributários.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(31, 'André Ramos', 'andre.ramos@provider.com', '(47) 99111-3344', 'Rua Timbó, 78', 'Timbó', 'SC', '2025-12-04', 'Regularização de alvarás.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(32, 'Laura Batista', 'laura.batista@test.com', '(48) 98822-4455', 'Rua Laguna, 100', 'Laguna', 'SC', '2025-11-25', 'BPO Financeiro.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(33, 'Igor Nascimento', 'igor.nascimento@email.com', '(49) 99933-5566', 'Rua Mafra, 200', 'Mafra', 'SC', '2026-01-12', NULL, 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(34, 'Tatiane Moreira', 'tatiane.moreira@domain.com', '(47) 99144-6677', 'Rua São Francisco, 12', 'São Francisco do Sul', 'SC', '2025-12-11', 'Encerramento de CNPJ.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(35, 'Samuel Farias', 'samuel.farias@webmail.com', '(48) 98855-7788', 'Rua Araranguá, 44', 'Araranguá', 'SC', '2025-12-23', 'Conciliação bancária.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(36, 'Luana Azevedo', 'luana.azevedo@site.com', '(49) 99966-8899', 'Rua Fraiburgo, 60', 'Fraiburgo', 'SC', '2025-12-07', 'Obrigações acessórias.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(37, 'Diego Campos', 'diego.campos@provider.com', '(47) 99177-9900', 'Rua Porto Belo, 30', 'Porto Belo', 'SC', '2026-01-18', NULL, 'Abertura e Legalização', '2025-11-20 19:31:40'),
(38, 'Isabela Barros', 'isabela.barros@test.com', '(48) 98888-1122', 'Rua Tijucas, 50', 'Tijucas', 'SC', '2025-11-30', 'Relatórios gerenciais.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(39, 'Matheus Cunha', 'matheus.cunha@email.com', '(49) 99900-3344', 'Rua Campos Novos, 90', 'Campos Novos', 'SC', '2025-12-13', 'Consultoria fiscal.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(40, 'Cláudia Sales', 'claudia.sales@domain.com', '(47) 99111-5566', 'Rua Penha, 101', 'Penha', 'SC', '2025-12-20', 'Registro na Junta Comercial.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(41, 'Roberto Peixoto', 'roberto.peixoto@webmail.com', '(48) 98822-6677', 'Rua Garopaba, 22', 'Garopaba', 'SC', '2026-01-05', 'Contas a pagar e receber.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(42, 'Alice Rezende', 'alice.rezende@site.com', '(49) 99933-7788', 'Rua Capinzal, 33', 'Capinzal', 'SC', '2025-12-15', NULL, 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(43, 'Marcelo Duarte', 'marcelo.duarte@provider.com', '(47) 99144-8899', 'Rua Guaramirim, 44', 'Guaramirim', 'SC', '2025-11-26', 'Contrato Social.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(44, 'Letícia Nogueira', 'leticia.nogueira@test.com', '(48) 98855-0011', 'Rua Santo Amaro, 55', 'Santo Amaro da Imperatriz', 'SC', '2025-12-10', 'Auditoria financeira interna.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(45, 'Paulo Guimarães', 'paulo.guimaraes@email.com', '(49) 99966-2233', 'Rua São Miguel, 66', 'São Miguel do Oeste', 'SC', '2026-01-25', 'Imposto de Renda PJ.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(46, 'Sérgio Viana', 'sergio.viana@domain.com', '(47) 99177-4455', 'Rua Barra Velha, 77', 'Barra Velha', 'SC', '2025-12-01', NULL, 'Abertura e Legalização', '2025-11-20 19:31:40'),
(47, 'Mônica Lemos', 'monica.lemos@webmail.com', '(48) 98888-6677', 'Rua Pomerode, 88', 'Pomerode', 'SC', '2025-12-17', 'Processamento de folha.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(48, 'Alexandre Cavalcanti', 'alexandre.c@site.com', '(49) 99900-8899', 'Rua São Joaquim, 10', 'São Joaquim', 'SC', '2025-11-27', 'Consultoria tributária.', 'Contabilidade Tributária', '2025-11-20 19:31:40'),
(49, 'Débora Monteiro', 'debora.monteiro@provider.com', '(47) 99111-0011', 'Rua Bombinhas, 25', 'Bombinhas', 'SC', '2026-02-10', 'Abertura de empresa Simples Nacional.', 'Abertura e Legalização', '2025-11-20 19:31:40'),
(50, 'César Antunes', 'cesar.antunes@test.com', '(48) 98822-2233', 'Rua Urubici, 50', 'Urubici', 'SC', '2025-12-05', 'Gestão de benefícios.', 'Gestão Financeira', '2025-11-20 19:31:40'),
(51, 'Pedro Augusto ', 'pedro@pedro.com.br', '49998368786', 'Rua Tapajós - E, 383', 'Chapecó', 'SC', '2026-02-10', 'Opa', 'Abertura de Empresas', '2025-11-20 19:35:25');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
