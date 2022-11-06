/*1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes;


2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano FROM Filmes
ORDER BY Ano;

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM Filmes 
where Nome like '%volta para%';

4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano FROM Filmes
WHERE Ano = '1997';

5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano FROM Filmes
WHERE Ano > '2000';

6 -  Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Duracao FROM Filmes
WHERE Duracao > '100' and Duracao < '150'
ORDER BY Duracao;

7-Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT ano, COUNT(*) As Quantidade from Filmes
GROUP BY Ano
ORDER BY SUM (Duracao) DESC



8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT  PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero='M';

9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT  PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome;

10 -Buscar o nome do filme e o gênero

SELECT Filmes.nome, Generos.Genero FROM Filmes
INNER JOIN FILmesGenero ON Filmes.Id = FilmesGenero.Idfilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Filmes.nome, Generos.Genero FROM Filmes
INNER JOIN FILmesGenero ON Filmes.Id = FilmesGenero.Idfilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id AND (Generos.Id =10)

12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id= ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

*/


select * from Generos

SELECT Filmes.nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id= ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
