/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  leonardozanotti
 * Created: Feb 26, 2022
 */

DROP DATABASE IF EXISTS lpooii;

CREATE DATABASE lpooii;

\c lpooii;

CREATE TABLE tb_contato (
    id_contato serial PRIMARY KEY,
    login_contato VARCHAR(50) NOT NULL,
    senha_contato VARCHAR(50) NOT NULL,
    nome_contato VARCHAR(100) NOT NULL
);

INSERT INTO tb_contato(login_contato, senha_contato, nome_contato)
VALUES ('leozanotti', 'leo123', 'leonardo zanotti');

INSERT INTO tb_contato(login_contato, senha_contato, nome_contato)
VALUES ('joaquim', 'joaquimsenha', 'joaquim alfredo');

INSERT INTO tb_contato(login_contato, senha_contato, nome_contato)
VALUES ('novousuario', 'senha.forte', 'novo usuário');