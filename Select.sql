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



# Operadores Relacionais 
# =	Igual
# >	Maior
# >=	Maior Igual
# <		Menor
# <= 	Menor ou Igual
# != 	Diferente
use vendas;
select * from carros
where id != 1;

# Busca onde o nome termina com nes
select * from alimentos
where nome like '%Nes';

# Busca onde o nome contém em qualquer parte nas
select * from alimentos
where nome like '%Nes%';

# Apresentar a quantidade de caracteres da coluna
select nome, length(nome) from alimentos;

# Apresentar o nome em caixa alta
select upper(nome) from alimentos;

# Apresentar o nome em caixa baixa
select lower(nome) from alimentos;

select concat(substring(nome, 1, 10), '...') from alimentos;

# 1 pagina
select * from alimentos
limit 0, 2;

# 2 pagina
select * from alimentos
limit 2, 2;

# 3 pagina
select * from alimentos
limit 4, 2;