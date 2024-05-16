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
select * from indicados_ao_oscar;

-- 8- Em qual edição do Oscar "Crash" concorreu ao Oscar?
-- Em 2006
SELECT ano_cerimonia
 FROM indicados_ao_oscar
 WHERE nome_do_filme = "Crash";
 
 -- 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
 UPDATE indicados_ao_oscar
 set vencedor = 1
 where nome_do_filme = "avengers: endgame";
 select * from indicados_ao_oscar
 where nome_do_filme = "avengers: endgame";
 
 -- 10- O filme Central do Brasil aparece no Oscar?
 -- Sim, ele aparece
 select nome_do_filme from indicados_ao_oscar
 where nome_do_filme = "Central Station"; 
 
 -- 11- Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 
 INSERT INTO indicados_ao_oscar (nome_do_filme, ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, vencedor) 
VALUES 
('Eternal Sunshine of the Spotless Mind', 2004, 2005, 77, 'Melhor Roteiro Original', 'Charlie Kaufman', 'Sim'),
('Pan\'s Labyrinth', 2006, 2007, 79, 'Melhor Direção de Arte', 'Eugenio Caballero', 'Sim'),
('City of God', 2002, 2003, 76, 'Melhor Filme em Língua Estrangeira', 'Fernando Meirelles', 'Sim');
select * from indicados_ao_oscar;

-- 12 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
UPDATE indicados_ao_oscar
SET 
    vencedor = 'Sim'
WHERE nome_do_filme = 'The Lord of the Rings: The Return of the King';
INSERT INTO indicados_ao_oscar (nome_do_filme, ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, vencedor) 
VALUES 
('Monster', 2003, 2004, 76, 'Melhor Atriz', 'Charlize Theron', 'Sim'),
('The Lord of the Rings: The Return of the King', 2003, 2004, 76, 'Melhor Diretor', 'Peter Jackson', 'Sim');
SELECT * FROM indicados_ao_oscar;
 





 



