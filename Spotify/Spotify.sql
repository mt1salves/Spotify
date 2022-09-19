CREATE DATABASE spotify;

USE spotify;

DROP table IF EXISTS Usuario;
DROP TABLE IF EXISTS Musica;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Artista;
DROP TABLE IF EXISTS Artistas_tem_Musicas;
DROP TABLE IF EXISTS Albuns_tem_Musicas;
DROP TABLE IF EXISTS Artistas_tem_Albuns;

CREATE TABLE Usuario (
  idUsuario integer PRIMARY KEY AUTO_INCREMENT,
  nome varchar(60) not NULL,
  login varchar(30) not NULL,
  senha VARCHAR(200) not NULL,
  email varchar(200) not NULL
);

CREATE TABLE Musica (
  idMusica integer PRIMARY KEY AUTO_INCREMENT,
  titulo varchar(60) not NULL,
  duracao INTEGER NOT NULL,
  data_de_lancamento DATE NOT NULL
);

CREATE TABLE Album (
  idAlbum integer PRIMARY KEY AUTO_INCREMENT,
  titulo varchar(60) not NULL,  
  data_de_lancamento DATE NOT NULL
);

CREATE TABLE Artista (
  idArtista integer PRIMARY KEY AUTO_INCREMENT,
  nome varchar(60) not NULL,
  bio TEXT NOT NULL  
);

CREATE TABLE Artistas_tem_Musicas (
  idArtista INTEGER NOT NULL,
  idMusica INTEGER NOT NULL,
  artista_principal boolean NOT NULL DEFAULT 1,
  FOREIGN KEY (idArtista) REFERENCES Artista (idArtista),
  FOREIGN KEY (idMusica) REFERENCES Musica (idMusica)  
);

CREATE TABLE Albuns_tem_Musicas (  
  idAlbum INTEGER NOT NULL,
  idMusica INTEGER NOT NULL, 
  FOREIGN KEY (idAlbum) REFERENCES Album (idAlbum),  
  FOREIGN KEY (idMusica) REFERENCES Musica (idMusica)  
);

CREATE TABLE Artistas_tem_Albuns (  
  idArtista INTEGER NOT NULL,
  idAlbum INTEGER NOT NULL,  
  FOREIGN KEY (idArtista) REFERENCES Artista (idArtista),
  FOREIGN KEY (idAlbum) REFERENCES Album (idAlbum)  
);


DROP view IF EXISTS view_Album_por_Artista;
DROP view IF EXISTS view_Musica_por_Artista;
DROP VIEW IF EXISTS view_Musica_por_Album;

INSERT INTO Artista(idArtista, nome, bio)
VALUES
(1,'Marília Mendonça','A “Realidade” de Marília Mendonça Do sonho de cantar à realidade de reunir 40 mil pessoas na gravação do DVD “Mesmo que nada der certo daqui para frente eu me sinto realizada: Tive minha noite de princesa!” – Esta foi a frase que Marília Mendonça disse para si mesma de frente ao espelho quando desceu do palco em Manaus, onde cantou para mais de 40 mil pessoas na gravação de seu segundo DVD – “Realidade”. O título foi escolhido por ela, até porque ninguém melhor que Marília Mendonça para saber as mudanças que sua vida e sua carreira tiveram em um curto período. O novo trabalho tem as participações de Henrique & Juliano, os quais Marília com toda humildade pediu para que fossem companheiros de uma vida e estivessem sempre juntos com ela. “Realidade” chega em CD/DVD às lojas e em todas plataformas digitais em março pela Som Livre com a expectativa de ser um dos maiores lançamentos do ano. Qual a chance de dar errado Marília? Se não bastasse seu sorriso cativante, sua voz potente e suave ao mesmo tempo, sua personalidade, suas letras profundas que conseguem ser compreendidas por todos os públicos, você é acima de tudo, uma artista nata! Para quem pôde acompanhar a gravação tinha a nítida impressão de que todas as canções eram hinos entoados por mais de 40 mil pessoas no Sambódromo de Manaus. Era claro a admiração do público por uma menina de 21 anos com linguagem de mulher.'),
(4,'PEDRO SAMPAIO',''),
(5,'Henrique & Juliano',''),
(6,'George Henrique & Rodrigo',''),
(7,'Paulo Pires',''),
(8,'Avine Vinny','De um talento descoberto na igreja, seguindo para uma banda montada com os amigos no interior do Ceará, ao artista mais ouvido do Brasil. Ávine Vinny vem colhendo frutos de um trabalho consolidado na cena musical e comemora as conquistas alcançadas em cinco anos de carreira solo. Aos 32 anos, natural de Sobral-CE, o cantor ultrapassou as barreiras do Nordeste - primeira região onde ganhou notoriedade – e chega com força total aos quatro cantos do país. Ele é também um dos poucos nomes da música brasileira a entrar para o TOP 50 Global da principal playlist do Spotify.'),
(9,'MC Levin',''),
(10,'Marina Sena',''),
(11,'Zé Felipe',''),
(13,'Zé Neto & Cristiano',''),
(15,'DJ Patrick Muniz',''),
(16,'Gusttavo Lima',''),
(17,'Mc Anjim',''),
(18,'Felipe Amorim',''),
(20,'Matuê',''),
(21,'Matheus & Kauan',''),
(22,'João Gomes',''),
(24,'DG e Batidão Stronda','Ávine Vinny é dono de uma das músicas mais tocadas do mundo nos últimos dias, e os números podem comprovar isto. O novo trabalho do cantor, intitulado “Coração Cachorro”, vem surpreendendo no crescente posicionamento no ranking das principais plataformas digitais e aplicativos, desde a sua estreia em 10 de setembro de 2021.'),
(26,'Tayrone',''),
(27,'Gloria Groove',''),
(29,'Matheus Fernandes',''),
(30,'Anitta','Since her breakthrough in Brazil six years ago, Anitta has become the leading artist of a new generation of Latin American music. As the biggest ever global female popstar to come from Brazil, she has amassed 50 million Instagram followers and over 15 million YouTube subscribers garnering more than 5 billion views. In July 2013, she released her self-titled first album, Anitta, followed by Ritmo Perfeito, in July 2014, and Bang in 2016. Her last album, Latin GRAMMY® nominated Kisses, was released in April 2019 and marks Anitta''s first trilingual album with songs in Spanish, Portuguese, and English. Since 2014, Anitta has been named “Best Brazilian Act” at the MTV Europe Music Awards for five consecutive years. She was a highlight of the 2016 Rio Olympic Games'' Opening Ceremony, where she performed alongside Brazilian singers/songwriters Gilberto Gil and Caetano Veloso. Anitta has worked with the likes of Madonna, Major Lazer, J Balvin, Diplo, Ozuna, and Maluma among others. Her latest hits include "Envolver", "Faking Love", "Girl From Rio", "Loco", “Me Gusta” with Cardi B and Myke Towers, “Tócame” feat. Arcangel & De La Ghetto and “Fuego” with DJ Snake and Sean Paul. Anitta is currently recording her anticipated new album.'),
(31,'Felipe Cardoso DJ',''),
(32,'Luan Santana',''),
(33,'Imagine Dragons',''),
(34,'MC Rogerinho',''),
(35,'MD Chefe',''),
(36,'Japãozin',''),
(37,'Tarcísio do Acordeon',''),
(38,'Adele','Since the release of her debut album ''19'', in 2008, Adele has become one of the most successful British artists of her generation. Her critically acclaimed debut album garnered over 6.5 million sales worldwide whilst the album has gone 8x Platinum in the UK. At the age of 19, Adele became the first-ever recipient of the BRITS Critics'' Choice Award. The accolades received by Adele only multiplied as the following year saw her claim Best New Artist and Best Female Pop Vocal Performance at the GRAMMYs.  As Adele embarks on her next chapter, she holds 15 GRAMMYs, 9 BRITS, 18 Billboard Awards, 2 IVORs, 1 Golden Globe, 1 Academy Award and 5 American Music Awards under her belt. The British singer-songwriter has received 11.5 million Album sales in the UK alone and 48 million Worldwide Album sales.'),
(39,'Vitor e Luan',''),
(40,'Lil Nas X',''),
(41,'Mari Fernandez',''),
(42,'John Amplificado',''),
(44,'Sidoka',''),
(49,'Diego & Victor Hugo',''),
(50,'Maiara & Maraisa','Se engana quem pensar no título do novo DVD de Maiara e Maraisa somente como inspiração na semelhança quase idêntica entre as gêmeas. Na verdade, “Reflexo” pretende materializar uma nova fase das cantoras; mais maduras, mais seguras e mais conhecedoras dos próprios sentimentos. Durante duas semanas de agosto, foram divulgadas no YouTube e nas plataformas digitais, sete guias: Coração Infectado, Repertório de Outro, Separada, Ai Que Vontade, Amor Comum, Ligação de Emergência e Não Abro Mão. Os lançamentos fizeram parte da estratégia de aquecer o público para o dia da gravação do DVD. “Coração Infectado” foi escolhida como música de trabalho e lançada nas rádios de todo o Brasil no dia 27 de agosto. Uma semana depois, a música surgiu no 1° lugar do ranking Billboard Brasil Hot 100. O DVD foi gravado no dia 09 de outubro em São Paulo, no Espaço das Américas. O cenário trouxe algo inédito no Brasil com espelhos e projeções, a ideia era justamente levar ao pé da letra a temática do DVD.'),
(51, 'Doja Cat', ''),
(52, 'SZA', ''),
(53, 'Pabllo Vittar', '');


INSERT INTO Musica (idMusica, titulo, duracao, data_de_lancamento) 
VALUES 
(1000, 'Esqueça-Me Se For Capaz', 159 , '2021-10-14'),
(1001, 'Todo Mundo Menos Você', 206 , '2021-10-14'),
(1002, 'Presepada', 196 , '2021-10-14'),
(1003, 'GALOPA', 180 , '2021-01-01'),
(1004, 'Arranhão - Ao Vivo', 153 , '2021-01-01'),
(1005, 'Vai Lá Em Casa Hoje', 191 , '2021-01-01'),
(1006, 'Ameaça', 188 , '2021-01-01'),
(1007, 'Coração Cachorro', 150 , '2021-01-01'),
(1008, 'Ela me Falou Que Quer Rave', 235 , '2021-01-01'),
(1009, 'Por Supuesto', 186 , '2021-01-01'),
(1010, 'Easy On Me', 224, '2021-10-15'),
(1011, 'Kiss Me More', 208, '2021-04-09');


INSERT INTO Album (idAlbum, titulo, data_de_lancamento) 
VALUES 
  (2000, '30', '2021-11-19'),
  (2001, 'De primeira', '2021-08-19'),
  (2002, 'Nosso Amor Envelheceu', '2021-07-02'),
  (2003, 'Patroas 35%', '2021-10-14'),
  (2004, 'Aqui em Casa', '2020-04-17'),
  (2005, '25', '2015-11-20'),
  (2006, 'Patroas', '2020-09-04'), 
  (2007, 'Sour', '2021-05-21'); 


INSERT INTO Artistas_tem_Albuns (idArtista,idAlbum) VALUES 
(1, 2002),
(1, 2003),
(50, 2003),
(50, 2004),
(38, 2000);


-- Músicas com artistas principais
INSERT INTO Artistas_tem_Musicas (idArtista, idMusica) 
VALUES 
  (38, 1010),
  (1,  1000),
  (1,  1001),
  (1,  1002),
  (50, 1000),
  (50, 1001),
  (50, 1002);
  
-- Músicas com feat
INSERT INTO Artistas_tem_Musicas (idArtista, idMusica, artista_principal) 
VALUES 
  (51, 1011, 1),
  (52, 1011, 0);
  

INSERT INTO Albuns_tem_Musicas (idMusica, idAlbum) 
VALUES 
	(1000, 2003), 
    (1001, 2003), 
    (1002, 2003),     
    (1009, 2001), 
    (1010, 2000);
    

SELECT
	Album.titulo,
    Album.data_de_lancamento,
    Artista.nome
FROM Album
INNER JOIN Artistas_tem_Albuns
ON Album.idAlbum = Artistas_tem_Albuns.idAlbum
INNER JOIN Artista
ON Artista.idArtista = Artistas_tem_Albuns.idArtista;

SELECT
	Artista.nome,
    Musica.titulo
FROM Artista
INNER JOIN Artistas_tem_Musicas
ON Artistas_tem_Musicas.idArtista = Artista.idArtista
INNER JOIN Musica
ON Artistas_tem_Musicas.idMusica = Musica.idMusica;

SELECT
	a.titulo AS 'Título do Album',
    a.data_de_lancamento,
    m.titulo AS 'Título da Música',
    m.duracao
FROM Album AS a
INNER JOIN Albuns_tem_Musicas AS ahm
ON ahm.idAlbum = a.idAlbum
INNER JOIN Musica AS m
ON ahm.idMusica = m.idMusica;

CREATE VIEW view_Album_por_Artista AS
SELECT 
	art.nome, alb.titulo, alb.data_de_lancamento
FROM Artista art
INNER JOIN Artistas_tem_Albuns juncao
ON art.idartista = juncao.idartista
INNER JOIN Album alb
ON alb.idalbum = juncao.idalbum
ORDER by art.nome, alb.titulo, alb.data_de_lancamento;


CREATE VIEW view_Musica_por_Artista AS
SELECT
	a.nome, m.titulo, m.duracao, m.data_de_lancamento
FROM Musica m
INNER JOIN Artistas_tem_Musicas juncao
ON m.idmusica = juncao.idMusica
INNER JOIN Artista a
ON a.idartista = juncao.idartista;

CREATE VIEW view_Musica_por_Album AS
SELECT
	a.titulo as 'album', m.titulo as 'musica', m.duracao, m.data_de_lancamento
FROM Musica m
INNER JOIN Albuns_tem_Musicas juncao
ON m.idmusica = juncao.idMusica
INNER JOIN Album a
ON a.idalbum = juncao.idalbum;