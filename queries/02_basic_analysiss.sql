1 - Qual é o filme mais longo do catálogo?

select max(length) as maior_filme from film

Maior filme tem 185 minutos
  
2 - Qual é o filme mais curto?

select min(length) as menor_filme from film

Menor filme tem 46 minutos

3 - Qual é a duração média dos filmes?

select avg(length) as media_filme from film

Média de 115.2720000000000000

4 - Quantos filmes existem em cada classificação (rating)? (G, PG, PG-13, R...)

select rating, count(film_id) as total_film_id from film
group by rating

PG-13	223
NC-17	210
G	178
PG	194
R	195

  
5 - Quais são os 10 filmes lançados mais recentemente?

select Distinct * from film 
order by release_year DESC
limit 10

Ace Goldfinger
Adaptation Holes
Affair Prejudice
African Egg
Agent Truman
Airplane Sierra
Airport Pollock
Alabama Devil
Aladdin Calendar
