# 📊 Análise do Catálogo da Netflix com SQL

Este projeto de portfólio realiza uma análise exploratória de dados do catálogo da Netflix. O objetivo é utilizar a linguagem SQL para extrair insights sobre a composição do acervo, respondendo a perguntas de negócio chave.

---

## 🛠️ Ferramentas Utilizadas

* **Linguagem:** SQL
* **Banco de Dados:** SQLite
* **Ferramenta de Interface:** DB Browser for SQLite
* **Versionamento de Código:** Git & GitHub

---

## 📈 Principais Insights da Análise

Através de queries SQL, foram respondidas as seguintes perguntas:

1.  **Qual a proporção de Filmes vs. Séries?**
    * O catálogo possui uma maioria de filmes.
    * **Filmes:** [6131]
    * **Séries:** [2676]

2.  **Quais são os 10 principais países produtores de conteúdo?**
    * Os Estados Unidos lideram com folga a produção de conteúdo, seguidos pela Índia. O Reino Unido, Japão e Coreia do Sul também são grandes produtores.

3.  **Qual o foco de público do catálogo?**
    * A análise da classificação etária (`rating`) mostra que a maior parte do conteúdo é voltada para o público adulto (**TV-MA**) e adolescente (**TV-14**), indicando um foco em audiências mais maduras.

---

## 📁 Estrutura do Projeto

* `netflix.db`: O arquivo de banco de dados SQLite contendo a tabela de dados.
* `analise_netflix.sql`: O script com todas as queries SQL comentadas, detalhando o processo de análise.
* `README.md`: Este arquivo de apresentação.

## 🚀 Como Replicar a Análise

1.  Clone este repositório para sua máquina local.
2.  Abra o arquivo `netflix.db` utilizando o DB Browser for SQLite (ou qualquer outro cliente SQLite).
3.  Execute as queries presentes no arquivo `analise_netflix.sql` para visualizar os resultados da análise.