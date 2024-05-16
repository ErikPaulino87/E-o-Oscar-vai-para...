-- 1- Quantas vezes Natalie Portman foi indicada ao Oscar?
-- Foi indicada 3 vezes.

select
count(*)
from indicados_ao_oscar
where nome_do_indicado = ("Natalie Portman");

-- 2- Quantos Oscars Natalie Portman ganhou?
-- Ganhou um.
select
count(*)
from indicados_ao_oscar
where nome_do_indicado = ("Natalie Portman") and vencedor = ("sim");

-- 3- Amy Adams já ganhou algum Oscar?
-- Não ganhou nenhum
select
count(*)
from indicados_ao_oscar
where nome_do_indicado = ("Amy Adams") and vencedor = ("sim");

-- 4- A série de filmes Toy Story ganhou um Oscar em quais anos?
-- 1996, 2000, 2011, 2020
SELECT ano_cerimonia
 FROM indicados_ao_oscar
 WHERE nome_do_filme LIKE ('%Toy Story%');
 
 -- 5- A partir de que ano que a categoria "Actress" deixa de existir? 
 -- 1975
 SELECT MAX(ano_filmagem) 
FROM indicados_ao_oscar
WHERE categoria = 'Actress';

-- 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
-- Louise Dresser
SELECT nome_do_indicado
FROM indicados_ao_oscar
WHERE categoria = 'Actress'
ORDER BY ano_cerimonia
LIMIT 1;

-- 7- Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.

UPDATE indicados_ao_oscar
SET vencedor = 1
WHERE vencedor = 'Sim';

UPDATE indicados_ao_oscar
SET vencedor = 0
WHERE vencedor = 'Não';





 



