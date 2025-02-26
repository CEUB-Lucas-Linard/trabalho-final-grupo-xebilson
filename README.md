[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=18429355&assignment_repo_type=AssignmentRepo)
# PDM-Trabalho-Final

# SUGESTÕES DE APLICATIVOS EM FLUTTER

A seguir estão 15 sugestões de aplicativos em Flutter, cada um com um **tema** e pelo menos **2 conceitos** (dentre os conteúdos do plano de ensino) que sejam relevantes e interligados. Cada projeto é **simples o bastante** para ser desenvolvido em **até 3 meses** por uma equipe de 4 alunos, mas pode ser expandido conforme desejado.

---

## 1. Lista de Tarefas Colaborativa

**Tema**: Organização pessoal e trabalho em equipe  
**Conceitos**:
- Persistência local (Shared Preferences / SQLite)
- Gerenciamento de estado (Provider, Riverpod, BLoC etc.)

**Sugestão de Funcionalidades**:
- Criar, editar e remover tarefas
- Modo colaborativo (cada usuário vê as tarefas de todos, se houver tempo de integrar login)
- Filtrar tarefas por concluídas / pendentes

---

## 2. Catálogo de Livros (ou Filmes)

**Tema**: Biblioteca de mídia (livros, filmes, séries)  
**Conceitos**:
- Consumo de API (por exemplo, API de filmes ou livros)
- Criação de interfaces personalizadas (listagem, detalhes, tela de pesquisa)

**Sugestão de Funcionalidades**:
- Exibir itens listados, com imagem e detalhes (autor, ano, sinopse)
- Possibilidade de marcar como “favorito” ou “já li / assisti”
- Tela de busca por título ou autor

---

## 3. Aplicativo de Anotações com Animações

**Tema**: Bloco de notas digital  
**Conceitos**:
- Widgets e animações (transições suaves ao criar/abrir nota)
- Persistência offline (armazenar as notas localmente)

**Sugestão de Funcionalidades**:
- Criar anotações rápidas (texto)
- Edição inline com animações de abertura/fechamento
- Organização por tags ou cores

---

## 4. Diário de Despesas (Expense Tracker)

**Tema**: Finanças pessoais  
**Conceitos**:
- Gerenciamento de estado (para registrar e recalcular gastos)
- Gráficos e layouts avançados (exibir relatórios de despesas)

**Sugestão de Funcionalidades**:
- Cadastro de despesas por categoria, data e valor
- Tela com gráfico para analisar despesas mensais
- Integração com API de câmbio (opcional)

---

## 5. Agenda de Contatos com Integração de Hardware

**Tema**: Organização de contatos  
**Conceitos**:
- Integração com hardware / recursos nativos (câmera para foto de perfil ou acesso aos contatos do dispositivo)
- Formulários / widgets de entrada (para cadastrar e editar contatos)

**Sugestão de Funcionalidades**:
- Lista de contatos, cada contato com foto (tirada da câmera ou da galeria)
- Editar, excluir e detalhar informações (email, telefone, endereço)
- Opção de discagem direta do app (usando Intent nativa, se Android)

---

## 6. Aplicativo de Receitas Culinárias

**Tema**: Gastronomia, culinária  
**Conceitos**:
- Consumo de API ou base de dados (para buscar receitas ou armazená-las localmente)
- Layout responsivo e personalização de widgets (exibir passo a passo ilustrado)

**Sugestão de Funcionalidades**:
- Lista de receitas com imagens, ingredientes e modo de preparo
- Filtro por categoria (sobremesa, prato principal, vegetariano etc.)
- Favoritar receitas, adicionar notas pessoais

---

## 7. App de Estudos (Flashcards ou Quiz)

**Tema**: Educação, revisão de conteúdo  
**Conceitos**:
- Navegação entre telas (para exibir perguntas e respostas)
- Gerenciamento de estado (pontuação, progresso do usuário)

**Sugestão de Funcionalidades**:
- Criar decks de flashcards (ex.: perguntas de programação, história etc.)
- Modo quiz: usuário responde e o app informa acertos e erros
- Registro de estatísticas para acompanhar evolução

---

## 8. Aplicativo de Vagas de Emprego Simples

**Tema**: Ofertas de trabalho, estágio  
**Conceitos**:
- Consumo de API (pode ser fictícia ou real, como LinkedIn Jobs, se possível)
- Filtro e busca de dados (uso de coleções em Dart e exibição condicional de resultados)

**Sugestão de Funcionalidades**:
- Listagem das vagas (remotas, presenciais, por área)
- Detalhes da vaga (descrição, requisitos, benefícios)
- Botão para “candidatar-se” (fluxo pode ser simulado se não houver back-end real)

---

## 9. Localizador de Restaurantes com Mapas

**Tema**: Gastronomia e geolocalização  
**Conceitos**:
- Integração com hardware (GPS) e uso de mapas (Google Maps)
- Tratamento de permissões (localização)

**Sugestão de Funcionalidades**:
- Mostrar restaurantes num raio de X km da localização atual
- Possível integração com alguma API que retorne dados de estabelecimentos
- Filtrar por tipo de culinária

---

## 10. App de Treino Físico / Academia

**Tema**: Saúde e bem-estar  
**Conceitos**:
- Layout / UI com animações (exibir progressão de exercícios)
- Gerenciamento de estado (controle de séries, peso, repetição)

**Sugestão de Funcionalidades**:
- Cadastro de exercícios (nome, descrição, grupo muscular)
- Timeline semanal de treinos (com check nas atividades concluídas)
- Gráficos para progresso (carga, repetição, datas)

---

## 11. App de Viagens / Roteiros Turísticos

**Tema**: Turismo e planejamento de viagens  
**Conceitos**:
- Navegação (múltiplas telas) (lista de destinos, detalhes, mapa)
- Persistência de dados (lista de destinos favoritos)

**Sugestão de Funcionalidades**:
- Tela inicial com principais destinos (imagem + breve descrição)
- Ao clicar, exibir detalhes, custo estimado, melhores datas
- Armazenar os destinos marcados como favoritos para consulta offline

---

## 12. App de Controle de Hábitos (Habit Tracker)

**Tema**: Desenvolvimento pessoal, criação de hábitos diários  
**Conceitos**:
- Gerenciamento de estado (armazena o status diário de cada hábito)
- Persistência local (salva o histórico do usuário)

**Sugestão de Funcionalidades**:
- Usuário cadastra hábitos (ler, correr etc.)
- Marca cada dia em que cumpriu a tarefa
- Gráfico / barra de progresso (animações opcionais)

---

## 13. App de Calendário de Eventos

**Tema**: Organização de agenda e eventos  
**Conceitos**:
- Widgets de entrada e layout avançado (mini calendário, lista de eventos)
- Notificações locais (para lembrar usuário de um evento)

**Sugestão de Funcionalidades**:
- Cadastrar eventos com data, hora, local
- Exibir calendário mensal e lista dos próximos eventos
- Notificação push local antes do evento (ex.: 15 minutos antes)

---

## 14. App de Marketplace de Itens Usados

**Tema**: Compra e venda de produtos usados, estilo “classificados”  
**Conceitos**:
- Consumo de API / integração com back-end (para cadastrar ou ler produtos)
- Upload de imagens (usar plugin de câmera ou galeria)

**Sugestão de Funcionalidades**:
- Lista de produtos (nome, descrição, preço, foto)
- Tela de detalhes com botão de contato (WhatsApp ou e-mail)
- Filtro por categoria (eletrônicos, livros etc.)

---

## 15. App de Pesquisas / Enquetes

**Tema**: Coletar opiniões e dados de usuários  
**Conceitos**:
- Formulários e validação de inputs (TextFormField, validações)
- Gráficos / visualização de dados (exibir resultados das enquetes)

**Sugestão de Funcionalidades**:
- Criação de perguntas de múltipla escolha ou respostas abertas
- Usuário preenche a pesquisa e o app gera estatísticas (percentuais, gráfico de barras)
- Opção de criar várias enquetes temáticas (política, entretenimento etc.)

---

# Observações Metodológicas

- **Complexidade Ajustável**: Todos os projetos podem ser **escalados** em complexidade. Para equipes que avançarem rápido, é possível integrar mais funcionalidades (ex.: autenticação, Firestore, push notifications etc.).
- **Documentação e Boas Práticas**: Incentive o uso de **Git** desde o início, testes básicos (Unit ou Widget Tests) e uma estrutura clara de pastas.
- **Avaliação Gradual**: Recomenda-se desenvolvimento em **sprints quinzenais**, onde cada equipe mostra o que foi implementado e recebe feedback contínuo.

# Rubrica

# **Rubrica de Correção**
**Escala de menções**:
- **II** (Inferior)
- **MI** (Médio Inferior)
- **MM** (Médio)
- **MS** (Médio Superior)
- **SS** (Superior)

A avaliação será composta por **3 dimensões**:
1. **Documentação**
2. **Qualidade Técnica do Código**
3. **Design do Produto**

Cada uma recebe menção na escala acima, com base nos critérios descritos a seguir.

---

## 1. Documentação

| Menção | Critérios de Avaliação                                                                                                                                                                                                         |
|-------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **II** | **Ausência ou nível extremamente baixo de documentação.**<br>• Quase nenhum registro de requisitos, funcionalidades ou instruções.<br>• Não há clareza sobre instalação/configuração.                                          |
| **MI** | **Documentação muito básica e incompleta.**<br>• Registra apenas parte das funcionalidades (sem detalhes de uso).<br>• Organização confusa, dificultando o entendimento do projeto.                                            |
| **MM** | **Documentação suficiente para compreensão inicial.**<br>• Descreve instalação, execução e funcionalidades principais.<br>• É simples, porém cobre o essencial sem muito detalhamento.                                         |
| **MS** | **Documentação bem organizada e clara.**<br>• Explica objetivos, arquitetura, instruções de uso e dependências.<br>• Inclui breves instruções de contribuição ou boas práticas internas.                                       |
| **SS** | **Documentação completa e profissional.**<br>• Fornece visão geral, diagramas de arquitetura, explicações de design e fluxos.<br>• Traz referências, exemplos de uso, tutoriais e instruções avançadas (deploy, testes, etc.). |

---

## 2. Qualidade Técnica do Código

| Menção | Critérios de Avaliação                                                                                                                                                                                                |
|-------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **II** | **Código desorganizado e pouco funcional.**<br>• Falhas constantes de execução e alta quantidade de bugs.<br>• Não segue convenções mínimas de estilo ou boas práticas.                                               |
| **MI** | **Código funcional, porém frágil.**<br>• Muitas “gambiarras” e pouca legibilidade.<br>• Falta de padronização (nomes de variáveis, formatação etc.).<br>• Baixa modularização.                                        |
| **MM** | **Código funcional e relativamente claro.**<br>• Erros pontuais, mas arquitetura minimamente organizada.<br>• Boas práticas seguidas em parte (nomes de variáveis, estrutura de pastas etc.).                         |
| **MS** | **Código bem estruturado e legível.**<br>• Padrões e convenções de estilo respeitados (lint, formatação, nomenclatura).<br>• Uso consistente de técnicas de versionamento e boas práticas (mensagens de commit etc.). |
| **SS** | **Código de alto nível de qualidade e manutenção.**<br>• Modularização clara e uso de padrões arquiteturais (ex.: MVC, MVVM, Bloc etc.).<br>• Inclui testes automatizados, tratamento de erros e escalabilidade.      |

---

## 3. Design do Produto

| Menção | Critérios de Avaliação                                                                                                                                                                                |
|-------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **II** | **Design confuso e pouco intuitivo.**<br>• Layout inconsistente, difícil de navegar.<br>• Ausência de padronização visual ou preocupações com usabilidade.                                            |
| **MI** | **Design minimamente utilizável, mas sem refinamento.**<br>• Falta hierarquia visual (cores, tipografia).<br>• Ajustes básicos de responsividade ou navegação ausentes ou insuficientes.              |
| **MM** | **Design simples, porém coerente.**<br>• Navegação compreensível e layouts básicos funcionais.<br>• Uso razoável de cores, espaçamentos e padrões de UI/UX.                                           |
| **MS** | **Design organizado, alinhado a boas práticas de UX.**<br>• Navegação fluida, responsividade adequada.<br>• Elementos visuais com boa harmonia e padronização (ícones, cores, tipografia).            |
| **SS** | **Design profissional, elegante e com alta usabilidade.**<br>• Layout responsivo, com animações/transições bem aplicadas.<br>• Excelência em coerência visual, consistência e experiência do usuário. |

---

## Observações Finais

- A **menção final** em cada aspecto deve refletir **o nível predominante** observado no projeto.
- O professor pode realizar um balanceamento, considerando também **entregas parciais**, **evolução** ao longo do desenvolvimento e a **consistência geral** entre documentação, código e design.
