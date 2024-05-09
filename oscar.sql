-- 1- Quantas vezes Natalie Portman foi indicada ao Oscar?
-- Foi indicada 3 vezes.

select
count(*)
from indicados_ao_oscar
where nome_do_indicado = ("Natalie Portman");

-- 2- Quantos Oscars Natalie Portman ganhou?
