[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=18429355&assignment_repo_type=AssignmentRepo)
# PDM-Trabalho-Final

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
