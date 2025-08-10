SELECT
	type AS tipo,
	COUNT(*) AS quantidade
FROM
	netflix_titles
GROUP BY
	type;


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


SELECT
	rating AS classicacao_etaria,
	COUNT(*) AS quantidade
FROM
	netflix_titles
WHERE	
	rating IS NOT NULL
GROUP BY
	rating
ORDER BY
	quantidade DESC;


