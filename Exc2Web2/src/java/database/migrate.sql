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

CREATE TABLE tb_cliente (
    id_cliente serial PRIMARY KEY,
    cpf_cliente CHAR(11) NOT NULL,
    email_cliente VARCHAR(50) NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    data_cliente DATE,
    rua_cliente VARCHAR(100),
    nr_cliente INTEGER,
    cep_cliente CHAR(8),
    cidade_cliente VARCHAR(100),
    uf_cliente CHAR(2)
);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000001', 'email1@gmail.com', 'cliente1', '2001-01-01', 'rua 1', 1, '00000001', 'Curitiba 1', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000002', 'email2@gmail.com', 'cliente2', '2002-02-02', 'rua 2', 2, '00000002', 'Curitiba 2', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000003', 'email3@gmail.com', 'cliente3', '2003-03-03', 'rua 3', 1, '00000003', 'Curitiba 3', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000004', 'email4@gmail.com', 'cliente4', '2004-04-04', 'rua 4', 1, '00000004', 'Curitiba 4', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000005', 'email5@gmail.com', 'cliente5', '2005-05-05', 'rua 5', 1, '00000005', 'Curitiba 5', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000006', 'email6@gmail.com', 'cliente6', '2006-06-06', 'rua 6', 1, '00000006', 'Curitiba 6', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000007', 'email7@gmail.com', 'cliente7', '2007-07-07', 'rua 7', 1, '00000007', 'Curitiba 7', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000008', 'email8@gmail.com', 'cliente8', '2008-08-08', 'rua 8', 1, '00000008', 'Curitiba 88', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000009', 'email9@gmail.com', 'cliente9', '2009-09-09', 'rua 9', 1, '00000009', 'Curitiba 9', 'PR');

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente)
VALUES ('00000000010', 'email10@gmail.com', 'cliente10', '2010-10-10', 'rua 10', 1, '00000010', 'Curitiba 10', 'PR');