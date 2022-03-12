DROP DATABASE IF EXISTS lpooiilivro;

CREATE DATABASE lpooiilivro;

\c lpooiilivro;

CREATE TABLE autor(
    id serial PRIMARY KEY,
    nome varchar(45) NOT NULL
);

CREATE TABLE livro(
    id serial PRIMARY KEY,
    titulo varchar(45)
);

CREATE TABLE Livro_Autor(
    id serial PRIMARY KEY,
    idLivro int,
    idAutor int
);