
/******************************************************************************
PERGUNTA 1: Qual a contagem e a proporção de filmes vs. séries no catálogo?

OBJETIVO: Entender a composição principal do catálogo da Netflix.

EXPLICAÇÃO TÉCNICA:
- Usaremos COUNT(*) para contar o total de itens em cada grupo.
- GROUP BY type para separar a contagem entre 'Movie' e 'TV Show'.
******************************************************************************/

SELECT
    type AS tipo,
    COUNT(*) AS quantidade
FROM
    netflix_titles
GROUP BY
    type;


/******************************************************************************
PERGUNTA 2: Quais são os 10 países que mais produziram conteúdo?

OBJETIVO: Identificar os principais centros de produção de conteúdo no catálogo.

EXPLICAÇÃO TÉCNICA:
- WHERE country IS NOT NULL: Filtramos os registros onde o país não é nulo,
  pois não podemos analisar dados que não existem.
- COUNT(show_id): Contamos os títulos para ter o total por país.
- GROUP BY country: Agrupamos a contagem por cada país.
- ORDER BY quantidade DESC: Ordenamos do maior para o menor.
- LIMIT 10: Limitamos o resultado para mostrar apenas o Top 10.
******************************************************************************/

SELECT
    country AS pais,
    COUNT(show_id) AS quantidade
FROM
    netflix_titles
WHERE
    country IS NOT NULL
GROUP BY
    country
ORDER BY
    quantidade DESC
LIMIT 10;


/******************************************************************************
PERGUNTA 3: Como os títulos se distribuem por classificação etária (rating)?

OBJETIVO: Entender o foco de público do catálogo (adulto, infantil, adolescente).

EXPLICAÇÃO TÉCNICA:
- WHERE rating IS NOT NULL: Novamente, removemos os dados faltantes para não
  distorcer a análise.
- COUNT(*): Contamos todos os títulos para cada classificação.
- GROUP BY rating: Agrupamos pela coluna de classificação etária.
- ORDER BY quantidade DESC: Ordenamos para ver as classificações mais
  comuns primeiro.
******************************************************************************/

SELECT
    rating AS classificacao_etaria,
    COUNT(*) AS quantidade
FROM
    netflix_titles
WHERE
    rating IS NOT NULL
GROUP BY
    rating
ORDER BY
    quantidade DESC;
