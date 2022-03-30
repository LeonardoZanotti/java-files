DROP DATABASE IF EXISTS lpooiilivro;

CREATE DATABASE lpooiilivro;

\c lpooiilivro;

CREATE TABLE autor(
    id serial PRIMARY KEY,
    nome varchar(45) NOT NULL,
    documento varchar(15) NOT NULL,
    naturalidade varchar(45) NOT NULL,
    nascimento DATE
);

CREATE TABLE livro(
    id serial PRIMARY KEY,
    titulo varchar(45),
    assunto varchar(45),
    isbnCode varchar(45),
    publicacao DATE
);

CREATE TABLE Livro_Autor(
    id serial PRIMARY KEY,
    idLivro int,
    idAutor int
);