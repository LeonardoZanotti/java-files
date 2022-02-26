/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  leonardozanotti
 * Created: Feb 26, 2022
 */

DROP DATABASE IF EXISTS web2;

CREATE DATABASE web2;

\c web2;

CREATE TABLE tb_usuario (
    id_usuario serial PRIMARY KEY,
    login_usuario VARCHAR(50) NOT NULL,
    senha_usuario VARCHAR(50) NOT NULL,
    nome_usuario VARCHAR(100) NOT NULL
);

INSERT INTO tb_usuario(login_usuario, senha_usuario, nome_usuario)
VALUES ('leozanotti', 'leo123', 'leonardo zanotti');

INSERT INTO tb_usuario(login_usuario, senha_usuario, nome_usuario)
VALUES ('joaquim', 'joaquimsenha', 'joaquim alfredo');

INSERT INTO tb_usuario(login_usuario, senha_usuario, nome_usuario)
VALUES ('novousuario', 'senha.forte', 'novo usuário');