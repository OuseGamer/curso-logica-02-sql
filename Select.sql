# Count -> saber a quantidade de registros
SELECT COUNT(id) FROM carros;

SELECT COUNT(id) FROM carros
	WHERE cor = 'Branco';

# SUM -> Apresentar a soma de determina(s) coluna(s)
SELECT SUM(preco) FROM carros;

# AVG -> Apresentar a média
SELECT AVG(preco) FROM carros;

# MIN -> apresentar o menor preço
SELECT MIN(preco) FROM carros;
# MAX -> apresenta o maior preço
SELECT MAX(preco) FROM carros;

# Apresentar modelo, preco ordenado pelo preço de forma crescente
SELECT modelo, preco
FROM carros
ORDER BY preco ASC;

select * FROM carros
Where ano >= 1970 and ano <= 2000;

# Apresentar modelo, preco ordenado pelo preço de forma decrescente
select modelo, preco
FROM carros
ORDER BY preco DESC;

select * from carros
where cor = 'Branco' or cor = 'Verde';

# Apresentar a data filtrando pelo carro com data de fabricação
select modelo, date_format(data_fabricacao, '%d/%m/%Y') as "Data de Fabricação"
from carros
where data_fabricacao is not null;
