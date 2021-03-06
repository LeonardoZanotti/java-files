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

CREATE TABLE tb_estado (
    id_estado serial PRIMARY KEY,
    nome_estado VARCHAR(100),
    sigla_estado CHAR(2)
);

CREATE TABLE tb_cidade (
    id_cidade serial PRIMARY KEY,
    nome_cidade VARCHAR(100),
    id_estado INT NOT NULL,
    CONSTRAINT fk_estado FOREIGN KEY(id_estado) REFERENCES tb_estado(id_estado)
);

CREATE TABLE tb_cliente (
    id_cliente serial PRIMARY KEY,
    cpf_cliente CHAR(11) NOT NULL,
    email_cliente VARCHAR(50) NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    data_cliente DATE,
    rua_cliente VARCHAR(100),
    nr_cliente INTEGER,
    cep_cliente CHAR(8),
    id_cidade INT,
    CONSTRAINT fk_cidade FOREIGN KEY(id_cidade) REFERENCES tb_cidade(id_cidade)
);

CREATE TABLE tb_produto (
    id_produto serial PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL
);

CREATE TABLE tb_tipo_atendimento (
    id_tipo_atendimento serial PRIMARY KEY,
    nome_tipo_atendimento VARCHAR(50) NOT NULL
);

CREATE TABLE tb_atendimento (
    id_atendimento serial PRIMARY KEY,
    dt_hr_atendimento TIMESTAMP,
    dsc_atendimento VARCHAR(255),
    res_atendimento CHAR(1),
    id_produto INT,
    id_tipo_atendimento INT,
    id_usuario INT,
    id_cliente INT,
    CONSTRAINT fk_produto FOREIGN KEY(id_produto) REFERENCES tb_produto(id_produto),
    CONSTRAINT fk_tipo_atendimento FOREIGN KEY(id_tipo_atendimento) REFERENCES tb_tipo_atendimento(id_tipo_atendimento),
    CONSTRAINT fk_usuario FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id_usuario),
    CONSTRAINT fk_cliente FOREIGN KEY(id_cliente) REFERENCES tb_cliente(id_cliente)
);

INSERT INTO tb_usuario(login_usuario, senha_usuario, nome_usuario)
VALUES ('leozanotti', '657b298b04e033810343842f993c9817', 'leonardo zanotti');

INSERT INTO tb_usuario(login_usuario, senha_usuario, nome_usuario)
VALUES ('joaquim', '12705eee806dbc01eef5d0233cdfa7a8', 'joaquim alfredo');

INSERT INTO tb_usuario(login_usuario, senha_usuario, nome_usuario)
VALUES ('novousuario', '82788f72090471a9133b9c0d107d8192', 'novo usu??rio');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Acre', 'AC');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Alagoas', 'AL');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Amap??', 'AP');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Amazonas', 'AM');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Bahia', 'BA');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Cear??', 'CE');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Esp??rito Santo', 'ES');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Goi??s', 'GO');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Maranh??o', 'MA');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Mato Grosso', 'MT');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Mato Grosso do Sul', 'MS');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Minas Gerais', 'MG');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Par??', 'PA');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Para??ba', 'PB');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Paran??', 'PR');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Pernambuco', 'PE');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Piau??', 'PI');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Rio de Janeiro', 'RJ');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Rio Grande do Norte', 'RN');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Rio Grande do Sul', 'RS');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Rond??nia', 'RO');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Roraima', 'RR');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Santa Catarina', 'SC');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('S??o Paulo', 'SP');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Sergipe', 'SE');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Tocantins', 'TO');

INSERT INTO tb_estado(nome_estado, sigla_estado)
VALUES ('Distrito Federal', 'DF');

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alta Floresta D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ariquemes', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabixi', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacoal', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerejeiras', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colorado do Oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corumbiara', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Costa Marques', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Espig??o D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guajar??-mirim', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaru', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ji-paran??', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Machadinho D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Brasil??ndia D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Preto do Oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pimenta Bueno', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Velho', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente M??dici', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Crespo', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rolim de Moura', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vilhena', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Guapor??', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Mamor??', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Alegre Dos Parecis', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Para??so', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritis', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Horizonte do Oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacaul??ndia', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Novo de Rond??nia', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candeias do Jamari', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castanheiras', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chupinguaia', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cujubim', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Jorge Teixeira', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapu?? do Oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ministro Andreazza', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirante da Serra', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Negro', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Uni??o', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parecis', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pimenteiras do Oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Primavera de Rond??nia', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Felipe D''oeste', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Guapor??', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Seringueiras', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teixeir??polis', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Theobroma', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urup??', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vale do Anari', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vale do Para??so', 21);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acrel??ndia', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assis Brasil', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasil??ia', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bujari', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capixaba', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro do Sul', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Epitaciol??ndia', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feij??', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jord??o', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('M??ncio Lima', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manoel Urbano', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marechal Thaumaturgo', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pl??cido de Castro', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Walter', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Branco', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rodrigues Alves', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa do Purus', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Guiomard', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sena Madureira', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tarauac??', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xapuri', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Acre', 1);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvar??es', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amatur??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anam??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anori', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apu??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atalaia do Norte', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Autazes', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barcelos', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barreirinha', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Benjamin Constant', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Beruri', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Ramos', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boca do Acre', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borba', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caapiranga', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canutama', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carauari', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Careiro', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Careiro da V??rzea', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coari', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Codaj??s', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eirunep??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Envira', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fonte Boa', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guajar??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Humait??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipixuna', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iranduba', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacoatiara', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamarati', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapiranga', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japur??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juru??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juta??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('L??brea', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manacapuru', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manaquiri', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manaus', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manicor??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mara??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mau??s', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nhamund??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Olinda do Norte', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Air??o', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Aripuan??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parintins', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pauini', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Figueiredo', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Preto da Eva', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Isabel do Rio Negro', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do I????', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gabriel da Cachoeira', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Paulo de Oliven??a', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Uatum??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silves', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabatinga', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapau??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tef??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tonantins', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uarini', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urucar??', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urucurituba', 4);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amajari', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Alegre', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonfim', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cant??', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caracara??', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caroebe', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iracema', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mucaja??', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Normandia', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacaraima', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rorain??polis', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Baliza', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Luiz', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uiramut??', 22);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abaetetuba', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abel Figueiredo', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acar??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Afu??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Azul do Norte', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alenquer', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almeirim', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altamira', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anaj??s', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ananindeua', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anapu', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Augusto Corr??a', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aurora do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aveiro', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bagre', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bai??o', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bannach', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barcarena', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belterra', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Benevides', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Tocantins', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonito', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bragan??a', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasil Novo', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo Grande do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Breu Branco', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Breves', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bujaru', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira do Piri??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira do Arari', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camet??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cana?? Dos Caraj??s', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capanema', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o Po??o', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castanhal', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chaves', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colares', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conc??rdia do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cumaru do Norte', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curion??polis', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curralinho', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curu??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curu????', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Eliseu', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eldorado Dos Caraj??s', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faro', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floresta do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Garraf??o do Norte', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goian??sia do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gurup??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarap??-a??u', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarap??-miri', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhangapi', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipixuna do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irituia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaituba', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itupiranga', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacareacanga', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacund??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juruti', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Limoeiro do Ajuru', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('M??e do Rio', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Magalh??es Barata', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marab??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maracan??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marapanim', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marituba', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Medicil??ndia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Melga??o', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mocajuba', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moju', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moju?? dos Campos', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muan??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Esperan??a do Piri??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ipixuna', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Timboteua', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Progresso', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Repartimento', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??bidos', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oeiras do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oriximin??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Our??m', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouril??ndia do Norte', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacaj??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palestina do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paragominas', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parauapebas', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pau D''arco', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peixe-boi', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pi??arra', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Placas', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponta de Pedras', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Portel', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto de Moz', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prainha', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Primavera', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quatipuru', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reden????o', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Maria', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rondon do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rur??polis', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salin??polis', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salvaterra', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Arari', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Isabel do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria Das Barreiras', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santar??m', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santar??m Novo', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Tau??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Caetano de Odivelas', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Capim', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix do Xingu', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Par??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Geraldo do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Ponta', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o de Pirabas', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Araguaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Guam??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o da Boa Vista', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapucaia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Jos?? Porf??rio', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Soure', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tail??ndia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Alta', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Santa', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tom??-a??u', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tracuateua', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trair??o', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tucum??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tucuru??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ulian??polis', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruar??', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vigia', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Viseu', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria do Xingu', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xinguara', 13);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra do Navio', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amap??', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Branca do Amapari', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cal??oene', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cutias', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ferreira Gomes', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaubal', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranjal do Jari', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macap??', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mazag??o', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oiapoque', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Grande', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pracu??ba', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tartarugalzinho', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria do Jari', 3);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abreul??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aguiarn??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alian??a do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almas', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anan??s', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angico', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida do Rio Negro', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aragominas', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguacema', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aragua??u', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aragua??na', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguan??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguatins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapoema', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arraias', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Augustin??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aurora do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Axix?? do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baba??ul??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bandeirantes do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Ouro', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barrol??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bernardo Say??o', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasil??ndia do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejinho de Nazar??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeirinha', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Lindos', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cariri do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmol??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carrasco Bonito', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caseara', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Centen??rio', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapada de Areia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapada da Natividade', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colinas do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Combinado', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Couto de Magalh??es', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristal??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crix??s do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Darcin??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dian??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divin??polis do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Irm??os do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Duer??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esperantina', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('F??tima', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Figueir??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Filad??lfia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formoso do Araguaia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortaleza do Taboc??o', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goianorte', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goiatins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guara??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gurupi', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipueiras', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacaj??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaguatins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapiratins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapor?? do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ja?? do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juarina', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa da Confus??o', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajeado', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lavandeira', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lizarda', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luzin??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marian??polis do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mateiros', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mauril??ndia do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miracema do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miranorte', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte do Carmo', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Santo do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeiras do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muricil??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Natividade', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazar??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Olinda', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Rosal??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Acordo', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Alegre', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Jardim', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oliveira de F??tima', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeirante', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeir??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??so do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paran??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pau D''arco', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Afonso', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peixe', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pequizeiro', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colm??ia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindorama do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piraqu??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pium', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Alta do Bom Jesus', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Alta do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Alegre do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Nacional', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Praia Norte', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Kennedy', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pugmil', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Recursol??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riachinho', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio da Concei????o', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Dos Bois', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Sono', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sampaio', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sandol??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa f?? do Araguaia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Tereza do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Salvador do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Val??rio da Natividade', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silvan??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tio Novo do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sucupira', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taguatinga', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taipas do Tocantins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Talism??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmas', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tocant??nia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tocantin??polis', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupirama', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupiratins', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wanderl??ndia', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xambio??', 26);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('A??ail??ndia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Afonso Cunha', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Doce do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alc??ntara', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aldeias Altas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altamira do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Alegre do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Alegre do Pindar??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Parna??ba', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amap?? do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amarante do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anajatuba', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anapurus', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apicum-a??u', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguan??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araioses', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arame', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arari', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Axix??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bacabal', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bacabeira', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bacuri', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bacurituba', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balsas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o de Graja??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Corda', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barreirinhas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??gua', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Benedito Leite', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bequim??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bernardo do Mearim', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Gurupi', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jardim', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus Das Selvas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Lugar', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo de Areia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti Bravo', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriticupu', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritirana', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira Grande', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajapi??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajari', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campestre do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ndido Mendes', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cantanhede', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capinzal do Norte', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carolina', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carutapera', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caxias', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cedral', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Central do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Centro do Guilherme', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Centro Novo do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapadinha', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cidel??ndia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cod??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coelho Neto', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colinas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Lago-a??u', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coroat??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cururupu', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Davin??polis', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Pedro', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Duque Bacelar', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esperantin??polis', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estreito', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feira Nova do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernando Falc??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formosa da Serra Negra', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortaleza Dos Nogueiras', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortuna', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Godofredo Viana', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gon??alves Dias', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Archer', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Edison Lob??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Eug??nio Barros', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Luiz Rocha', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Newton Bello', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Nunes Freire', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gra??a Aranha', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Graja??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guimar??es', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Humberto de Campos', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Icatu', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarap?? do Meio', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarap?? Grande', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imperatriz', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaipava do Graja??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapecuru Mirim', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itinga do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jatob??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jenipapo Dos Vieiras', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Lisboa', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Josel??ndia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Junco do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lago da Pedra', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lago do Junco', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lago Verde', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Mato', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lago Dos Rodrigues', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Grande do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajeado Novo', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lima Campos', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Loreto', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lu??s Domingues', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Magalh??es de Almeida', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maraca??um??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maraj?? do Sena', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maranh??ozinho', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mata Roma', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matinha', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mat??es', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mat??es do Norte', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Milagres do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirador', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miranda do Norte', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirinzal', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mon????o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montes Altos', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morros', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nina Rodrigues', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Colinas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Iorque', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Olinda do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho D''??gua Das Cunh??s', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olinda Nova do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pa??o do Lumiar', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeir??ndia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paraibano', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parnarama', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passagem Franca', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pastos Bons', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulino Neves', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo Ramos', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedreiras', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro do Ros??rio', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Penalva', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peri Mirim', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peritor??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindar??-mirim', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinheiro', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pio Xii', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirapemas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po????o de Pedras', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Franco', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Rico do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Dutra', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Juscelino', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente M??dici', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Sarney', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Vargas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Primeira Cruz', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Raposa', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribamar Fiquene', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ros??rio', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Samba??ba', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Filomena do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Helena', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa In??s', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia do Paru??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Quit??ria do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Amaro do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio Dos Lopes', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Benedito do Rio Preto', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bernardo', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Azeit??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix de Balsas', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Brej??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Batista', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Car??', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Para??so', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Soter', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Dos Patos', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Ribamar', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Bas??lios', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??s', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??s Gonzaga do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Mateus do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro da ??gua Branca', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro Dos Crentes', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Raimundo Das Mangabeiras', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Raimundo do Doca Bezerra', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Roberto', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vicente Ferrer', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Satubinha', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Alexandre Costa', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador la Rocque', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrano do Maranh??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tio Novo', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sucupira do Norte', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sucupira do Riach??o', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tasso Fragoso', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timbiras', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timon', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trizidela do Vale', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tufil??ndia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tuntum', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turia??u', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turil??ndia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tut??ia', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urbano Santos', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Grande', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Viana', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Nova Dos Mart??rios', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria do Mearim', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vitorino Freire', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('z?? Doca', 9);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agricol??ndia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Branca', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoinha do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alegrete do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Long??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada do Gurgu??ia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amarante', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angical do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('An??sio de Abreu', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Almeida', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aroazes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aroeiras do Itaim', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arraial', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assun????o do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Avelino Lopes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baixa Grande do Ribeiro', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra D''alc??ntara', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barras', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barreiras do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barro Duro', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Batalha', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Beneditinos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bertol??nia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bet??nia do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Hora', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bocaina', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Princ??pio do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonfim do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boqueir??o do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasileira', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti Dos Lopes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti Dos Montes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabeceiras do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajazeiras do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajueiro da Praia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caldeir??o Grande do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campinas do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Alegre do Fidalgo', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Grande do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Largo do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Maior', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canavieira', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canto do Buriti', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o de Campos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o Gerv??sio Oliveira', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caracol', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cara??bas do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caridade do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castelo do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caxing??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocal', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocal de Telha', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocal Dos Alves', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coivaras', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Col??nia do Gurgu??ia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Col??nia do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Canind??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Jos?? Dias', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corrente', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristal??ndia do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristino Castro', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curimat??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Currais', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curralinhos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curral Novo do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Demerval Lob??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dirceu Arcoverde', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Expedito Lopes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Domingos Mour??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Inoc??ncio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Elesb??o Veloso', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eliseu Martins', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esperantina', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fartura do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flores do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floresta do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floriano', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francin??polis', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Ayres', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Macedo', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Santos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fronteiras', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Geminiano', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gilbu??s', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guadalupe', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaribas', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hugo Napole??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilha Grande', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhuma', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipiranga do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Isa??as Coelho', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itain??polis', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaueira', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacobina do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaic??s', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim do Mulato', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jatob?? do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jerumenha', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Costa', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joaquim Pires', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joca Marques', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jos?? de Freitas', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juazeiro do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('J??lio Borges', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jurema', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoinha do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Alegre', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Barro do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa de S??o Francisco', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do S??tio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Landri Sales', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lu??s Correia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luzil??ndia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Madeiro', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manoel Em??dio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marcol??ndia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marcos Parente', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Massap?? do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matias Ol??mpio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miguel Alves', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miguel Le??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Milton Brand??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monsenhor Gil', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monsenhor Hip??lito', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro Cabe??a no Tempo', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro do Chap??u do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Murici Dos Portelas', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazar?? do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Naz??ria', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora de Nazar??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora Dos Rem??dios', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Oriente do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Santo Ant??nio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oeiras', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho D''??gua do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Padre Marcos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paes Landim', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paje?? do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeira do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeirais', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paquet??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parnagu??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parna??ba', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passagem Franca do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patos do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pau D''arco do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulistana', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pavussu', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro ii', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Laurentino', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Santa Rita', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Picos', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pimenteiras', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pio ix', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piracuruca', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piripiri', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Alegre do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prata do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queimada Nova', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reden????o do Gurgu??ia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Regenera????o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho Frio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeira do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeiro Gon??alves', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Grande do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz Dos Milagres', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Filomena', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luz', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio de Lisboa', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio Dos Milagres', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo In??cio do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Braz do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Assis do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Gurgu??ia', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Canabrava', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Fronteira', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Serra', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Varjota', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Arraial', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Divino', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Peixe', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Juli??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Louren??o do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Luis do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel da Baixa Grande', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Fidalgo', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Tapuio', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Raimundo Nonato', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sebasti??o Barros', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sebasti??o Leal', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sigefredo Pacheco', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sim??es', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Simpl??cio Mendes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Socorro do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sussuapara', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tamboril do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tanque do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teresina', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uru??u??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valen??a do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea Branca', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea Grande', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera Mendes', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Nova do Piau??', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wall Ferraz', 17);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abaiara', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acarap??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acara??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acopiara', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aiuaba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alc??ntaras', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altaneira', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Santo', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amontada', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Antonina do Norte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apuiar??s', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aquiraz', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aracati', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aracoiaba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ararend??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araripe', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aratuba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arneiroz', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assar??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aurora', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baixio', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Banabui??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barbalha', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barreira', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barroquinha', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baturit??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Beberibe', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Cruz', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Viagem', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo Santo', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camocim', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Sales', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canind??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capistrano', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caridade', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carir??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cariria??u', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cari??s', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carnaubal', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cascavel', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catarina', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catunda', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caucaia', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cedro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chaval', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chor??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chorozinho', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corea??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crate??s', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crato', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Croat??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Deputado Irapuan Pinheiro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erer??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eus??bio', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Farias Brito', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Forquilha', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortaleza', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortim', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frecheirinha', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('General Sampaio', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gra??a', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Granja', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Granjeiro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Groa??ras', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guai??ba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraciaba do Norte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaramiranga', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hidrol??ndia', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Horizonte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibaretama', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiapina', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibicuitinga', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Icapu??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ic??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguatu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Independ??ncia', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipaporanga', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipaumirim', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipueiras', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iracema', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irau??uba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itai??aba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaitinga', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapag??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapipoca', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapi??na', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itarema', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatira', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaretama', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaribara', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaribe', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaruana', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jati', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jijoca de Jericoacoara', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juazeiro do Norte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juc??s', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lavras da Mangabeira', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Limoeiro do Norte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Madalena', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maracana??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maranguape', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marco', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Martin??pole', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Massap??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mauriti', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Meruoca', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Milagres', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Milh??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mira??ma', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miss??o Velha', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Momba??a', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monsenhor Tabosa', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morada Nova', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mora??jo', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morrinhos', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mucambo', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mulungu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Olinda', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Russas', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Oriente', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ocara', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Or??s', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacajus', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacatuba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacoti', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacuj??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palhano', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palm??cia', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paracuru', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paraipaba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parambu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paramoti', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Branca', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Penaforte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pentecoste', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pereiro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindoretama', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piquet Carneiro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pires Ferreira', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Poranga', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porteiras', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Potengi', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Potiretama', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quiterian??polis', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixad??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixel??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixeramobim', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixer??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reden????o', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reriutaba', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Russas', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saboeiro', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salitre', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Acara??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Cariri', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Quit??ria', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Benedito', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Amarante', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Jaguaribe', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??s do Curu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Pompeu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador s??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sobral', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Solon??pole', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabuleiro do Norte', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tamboril', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tarrafas', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tau??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teju??uoca', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tiangu??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trairi', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tururu', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubajara', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umari', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umirim', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruburetama', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruoca', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varjota', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea Alegre', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vi??osa do Cear??', 6);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acari', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('A??u', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Afonso Bezerra', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Nova', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alexandria', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almino Afonso', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto do Rodrigues', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angicos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Martins', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apodi', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areia Branca', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ar??s', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Augusto Severo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ba??a Formosa', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bara??na', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barcelona', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bento Fernandes', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bod??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejinho', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cai??ara do Norte', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cai??ara do Rio do Vento', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caic??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Redondo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canguaretama', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cara??bas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carna??ba Dos Dantas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carnaubais', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cear??-mirim', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Cor??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Ezequiel', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Jo??o Pessoa', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeta', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Currais Novos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doutor Severiano', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parnamirim', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Encanto', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Equador', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esp??rito Santo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Extremoz', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Felipe Guerra', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernando Pedroza', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flor??nia', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Dantas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frutuoso Gomes', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Galinhos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goianinha', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Dix-sept Rosado', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Grossos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guamar??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ielmo Marinho', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipangua??u', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipueira', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaj??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ja??an??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Janda??ra', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jandu??s', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Janu??rio Cicco', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japi', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim de Angicos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim de Piranhas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim do Serid??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o C??mara', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Dias', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jos?? da Penha', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jucurutu', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jundi??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa D''anta', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa de Pedras', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa de Velhos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Nova', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Salgada', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajes', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajes Pintadas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lucr??cia', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lu??s Gomes', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maca??ba', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macau', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Major Sales', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marcelino Vieira', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Martins', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maxaranguape', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Messias Targino', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montanhas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Das Gameleiras', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mossor??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Natal', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('N??sia Floresta', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Cruz', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho-d''??gua do Borges', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Branco', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paran??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parazinho', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parelhas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Fogo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passa e Fica', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passagem', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patu', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pau Dos Ferros', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Grande', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Preta', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Avelino', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Velho', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pend??ncias', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pil??es', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Branco', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Portalegre', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto do Mangue', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Juscelino', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pureza', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rafael Fernandes', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rafael Godeiro', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho da Cruz', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho de Santana', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riachuelo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rodolfo Fernandes', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tibau', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ruy Barbosa', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Matos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Serid??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento do Norte', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento do Trair??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Fernando', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Oeste', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Amarante', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Sabugi', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Mipibu', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Campestre', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Serid??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Gostoso', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Paulo do Potengi', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Rafael', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Tom??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vicente', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador El??i de Souza', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Georgino Avelino', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra de S??o Bento', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra do Mel', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Negra do Norte', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrinha', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrinha Dos Pintos', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Severiano Melo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tio Novo', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taboleiro Grande', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taipu', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tangar??', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tenente Ananias', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tenente Laurentino Cruz', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tibau do Sul', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timba??ba Dos Batistas', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Touros', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Triunfo Potiguar', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umarizal', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Upanema', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Venha-ver', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera Cruz', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vi??osa', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Flor', 19);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Branca', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aguiar', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoa Grande', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoa Nova', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoinha', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alcantil', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Algod??o de Janda??ra', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alhandra', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Rio do Peixe', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amparo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??agi', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arara', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araruna', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areia', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areia de Bara??nas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areial', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aroeiras', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assun????o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ba??a da Trai????o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bananeiras', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bara??na', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de Santana', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de Santa Rosa', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de S??o Miguel', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bayeux', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m do Brejo do Cruz', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bernardino Batista', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Ventura', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Sucesso', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonito de Santa f??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boqueir??o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igaracy', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borborema', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo do Cruz', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo Dos Santos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caapor??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabaceiras', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabedelo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira Dos ??ndios', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacimba de Areia', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacimba de Dentro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacimbas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cai??ara', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajazeiras', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajazeirinhas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caldas Brand??o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camala??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina Grande', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capim', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cara??bas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carrapateira', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casserengue', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catingueira', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catol?? do Rocha', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caturit??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Condado', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conde', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Congo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coremas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coxixola', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz do Esp??rito Santo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cubati', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cuit??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cuitegi', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cuit?? de Mamanguape', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curral de Cima', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curral Velho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dami??o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Desterro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vista Serrana', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diamante', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dona In??s', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Duas Estradas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Emas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esperan??a', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fagundes', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Martinho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gado Bravo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarabira', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gurinh??m', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gurj??o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiara', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imaculada', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ing??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabaiana', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaporanga', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapororoca', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatuba', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacara??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jeric??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Pessoa', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juarez T??vora', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juazeirinho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Junco do Serid??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juripiranga', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juru', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa de Dentro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Seca', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lastro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Livramento', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Logradouro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lucena', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('M??e D''??gua', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Malta', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mamanguape', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mana??ra', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marca????o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mari', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mariz??polis', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Massaranduba', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mataraca', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matinhas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mato Grosso', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matur??ia', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mogeiro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montadas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Horebe', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monteiro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mulungu', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Natuba', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazarezinho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Floresta', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Olinda', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Palmeira', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho D''??gua', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olivedos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Velho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parari', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passagem', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulista', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Branca', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Lavrada', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedras de Fogo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pianc??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Picu??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pilar', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pil??es', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pil??ezinhos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirpirituba', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pitimbu', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pocinhos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Dantas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o de Jos?? de Moura', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pombal', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prata', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Princesa Isabel', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Puxinan??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queimadas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixab??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rem??gio', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro R??gis', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o do Bacamarte', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o do Po??o', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho de Santo Ant??nio', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho Dos Cavalos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Tinto', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salgadinho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salgado de S??o F??lix', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cec??lia', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Helena', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa In??s', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana de Mangueira', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana Dos Garrotes', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santar??m', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Teresinha', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Andr??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bentinho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Cariri', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos de Pombal', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Cariri', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Tigre', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Lagoa Tapada', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Caiana', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Espinharas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Ramos', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Piranhas', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Princesa', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Bonfim', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Brejo do Cruz', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Sabugi', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Cordeiros', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Mamede', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel de Taipu', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o de Lagoa de Ro??a', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Umbuzeiro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sap??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serid??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Branca', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra da Raiz', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Grande', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Redonda', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serraria', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sert??ozinho', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sobrado', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sol??nea', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Soledade', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Soss??go', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sousa', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sum??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo de Santana', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapero??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tavares', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teixeira', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ten??rio', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Triunfo', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uira??na', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umbuzeiro', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vieir??polis', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Zabel??', 14);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abreu e Lima', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Afogados da Ingazeira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Afr??nio', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agrestina', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Preta', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas Belas', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoinha', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alian??a', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altinho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amaraji', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angelim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??oiaba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araripina', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arcoverde', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de Guabiraba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barreiros', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m de Maria', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m de S??o Francisco', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belo Jardim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bet??nia', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bezerros', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bodoc??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Conselho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jardim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonito', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brej??o', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejinho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo da Madre de Deus', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buenos Aires', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bu??que', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabo de Santo Agostinho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabrob??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeirinha', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caet??s', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cal??ado', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Calumbi', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camaragibe', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camocim de S??o F??lix', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camutanga', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canhotinho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capoeiras', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carna??ba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carnaubeira da Penha', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carpina', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caruaru', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casinhas', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catende', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cedro', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ch?? de Alegria', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ch?? Grande', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Condado', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Correntes', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cort??s', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cumaru', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cupira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cust??dia', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dormentes', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Escada', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Exu', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feira Nova', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernando de Noronha', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ferreiros', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flores', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floresta', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Miguelinho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gameleira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Garanhuns', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gl??ria do Goit??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goiana', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Granito', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gravat??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iati', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibimirim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirajuba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarassu', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguaraci', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inaj??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ingazeira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipojuca', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipubi', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacuruba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??ba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilha de Itamarac??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamb??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapetim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapissuma', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaquitinga', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaboat??o Dos Guararapes', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaqueira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jata??ba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jatob??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Alfredo', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joaquim Nabuco', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jucati', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jupi', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jurema', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Carro', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Itaenga', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa do Ouro', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Dos Gatos', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Grande', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajedo', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Limoeiro', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macaparana', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Machados', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manari', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maraial', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirandiba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moreno', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazar?? da Mata', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olinda', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Orob??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oroc??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouricuri', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmares', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeirina', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Panelas', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranatama', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parnamirim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paudalho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulista', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pesqueira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Petrol??ndia', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Petrolina', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po????o', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pombos', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Primavera', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quipap??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixaba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Recife', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho Das Almas', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Formoso', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sair??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salgadinho', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salgueiro', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salo??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sanhar??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz da Baixa Verde', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Capibaribe', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Filomena', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria da Boa Vista', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Cambuc??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Benedito do Sul', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento do Una', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Caitano', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Joaquim do Monte', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Coroa Grande', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Belmonte', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Egito', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Louren??o da Mata', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vicente Ferrer', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Talhada', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrita', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sert??nia', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sirinha??m', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moreil??ndia', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Solid??o', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Surubim', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabira', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tacaimb??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tacaratu', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tamandar??', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquaritinga do Norte', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terezinha', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Nova', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timba??ba', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Toritama', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tracunha??m', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trindade', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Triunfo', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupanatinga', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tuparetama', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Venturosa', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Verdejante', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vertente do L??rio', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vertentes', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vic??ncia', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria de Santo Ant??o', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xex??u', 16);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Branca', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anadia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapiraca', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atalaia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de Santo Ant??nio', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de S??o Miguel', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Batalha', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bel??m', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belo Monte', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boca da Mata', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Branquinha', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacimbinhas', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajueiro', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campestre', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Alegre', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Grande', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canapi', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capela', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carneiros', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ch?? Preta', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coit?? do N??ia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Col??nia Leopoldina', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coqueiro Seco', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coruripe', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cra??bas', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Delmiro Gouveia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Riachos', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela de Alagoas', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feira Grande', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feliz Deserto', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flexeiras', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Girau do Ponciano', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibateguara', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igaci', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igreja Nova', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhapi', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacar?? Dos Homens', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacu??pe', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japaratinga', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaramataia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jequi?? da Praia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joaquim Gomes', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jundi??', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Junqueiro', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa da Canoa', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Limoeiro de Anadia', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macei??', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Major Isidoro', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maragogi', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maravilha', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marechal Deodoro', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maribondo', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mar Vermelho', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mata Grande', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matriz de Camaragibe', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Messias', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Minador do Negr??o', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monteir??polis', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Murici', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Lino', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho D''??gua Das Flores', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho D''??gua do Casado', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olho D''??gua Grande', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oliven??a', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Branco', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palestina', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeira Dos ??ndios', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('P??o de A????car', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pariconha', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paripueira', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passo de Camaragibe', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo Jacinto', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Penedo', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pia??abu??u', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pilar', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindoba', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piranhas', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Das Trincheiras', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Calvo', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto de Pedras', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Real do Col??gio', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quebrangulo', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Largo', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Roteiro', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia do Norte', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Ipanema', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Munda??', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Br??s', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Laje', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Tapera', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??s do Quitunde', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel Dos Campos', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel Dos Milagres', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Satuba', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Rui Palmeira', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tanque D''arca', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquarana', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teot??nio Vilela', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Traipu', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o Dos Palmares', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vi??osa', 2);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amparo de S??o Francisco', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aquidab??', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aracaju', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arau??', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areia Branca', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Dos Coqueiros', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boquim', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo Grande', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo do Brito', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canhoba', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canind?? de S??o Francisco', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capela', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carira', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carm??polis', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cedro de S??o Jo??o', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristin??polis', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cumbe', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divina Pastora', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Est??ncia', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feira Nova', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Paulo', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gararu', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('General Maynard', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gracho Cardoso', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilha Das Flores', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indiaroba', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabaiana', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabaianinha', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabi', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaporanga D''ajuda', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japaratuba', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japoat??', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagarto', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranjeiras', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macambira', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Malhada Dos Bois', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Malhador', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maruim', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moita Bonita', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre de Sergipe', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muribeca', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ne??polis', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora Aparecida', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora da Gl??ria', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora Das Dores', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora de Lourdes', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora do Socorro', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacatuba', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Mole', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedrinhas', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinh??o', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirambu', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Redondo', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Verde', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto da Folha', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Propri??', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o do Dantas', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riachuelo', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??polis', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ros??rio do Catete', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salgado', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia do Itanhy', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do S??o Francisco', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa de Lima', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Amaro Das Brotas', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Crist??v??o', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Aleixo', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sim??o Dias', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Siriri', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Telha', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tobias Barreto', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tomar do Geru', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umba??ba', 25);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aba??ra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abar??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acajutiba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Adustina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Fria', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??rico Cardoso', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aiquara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoinhas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alcoba??a', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almadina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amargosa', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Am??lia Rodrigues', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Am??rica Dourada', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anag??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andara??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andorinha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angical', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anguera', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Antas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Cardoso', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Gon??alves', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apor??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apuarema', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aracatu', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??as', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araci', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aramari', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arataca', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aratu??pe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aurelino Leal', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baian??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baixa Grande', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Banza??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra da Estiva', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Cho??a', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Mendes', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Rocha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barreiras', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barro Alto', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barrocas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Lomanto J??nior', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belmonte', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belo Campo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Biritinga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Nova', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Tupim', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus da Lapa', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus da Serra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boninal', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonito', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boquira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Botupor??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brej??es', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brotas de Maca??bas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brumado', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buerarema', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritirama', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caatiba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabaceiras do Paragua??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacul??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ca??m', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caetanos', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caetit??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cafarnaum', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cairu', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caldeir??o Grande', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camacan', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cama??ari', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camamu', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Alegre de Lourdes', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Formoso', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Can??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canarana', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canavieiras', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candeal', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candeias', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candiba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ndido Sales', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cansan????o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canudos', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capela do Alto Alegre', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capim Grosso', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cara??bas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caravelas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cardeal da Silva', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carinhanha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casa Nova', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castro Alves', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catu', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caturama', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Central', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chorroch??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??cero Dantas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cip??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coaraci', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocos', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o da Feira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Almeida', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Coit??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Jacu??pe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conde', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conde??ba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Contendas do Sincor??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cora????o de Maria', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cordeiros', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coribe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Jo??o s??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Correntina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cotegipe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cravol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cris??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crist??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz Das Almas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cura????', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('D??rio Meira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dias D''??vila', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Bas??lio', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Macedo Costa', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('El??sio Medrado', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Encruzilhada', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre Rios', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esplanada', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Euclides da Cunha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eun??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('F??tima', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feira da Mata', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feira de Santana', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Filad??lfia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Firmino Alves', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floresta Azul', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formosa do Rio Preto', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gandu', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gavi??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gentio do Ouro', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gl??ria', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gongogi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Mangabeira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guajeru', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guanambi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaratinga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Heli??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ia??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiassuc??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibicara??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibicoara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibicu??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibipeba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibipitanga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiquera', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirapitanga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirapu??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirataia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibitiara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibitit??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibotirama', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ichu', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igapor??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igrapi??na', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igua??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilh??us', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhambupe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipecaet??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipia??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipir??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipupiara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irajuba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iramaia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iraquara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irar??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irec??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabela', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaberaba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabuna', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacar??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaet??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itagi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itagib??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itagimirim', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itagua??u da Bahia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaju do Col??nia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaju??pe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamaraju', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamari', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamb??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itanagra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itanh??m', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaparica', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itap??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapebi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapetinga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapicuru', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapitanga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaquara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itarantim', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatim', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itiru??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iti??ba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itoror??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itua??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ituber??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iui??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaborandi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacaraci', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacobina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaquara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguarari', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaripe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Janda??ra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jequi??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jeremoabo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jiquiri????', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jita??na', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Dourado', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juazeiro', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jucuru??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jussara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jussari', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jussiape', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lafaiete Coutinho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Real', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laje', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajed??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajedinho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajedo do Tabocal', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lamar??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lap??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lauro de Freitas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Len????is', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lic??nio de Almeida', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Livramento de Nossa Senhora', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lu??s Eduardo Magalh??es', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macajuba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macarani', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maca??bas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macurur??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Madre de Deus', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maetinga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maiquinique', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mairi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Malhada', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Malhada de Pedras', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manoel Vitorino', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mansid??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marac??s', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maragogipe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mara??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marcion??lio Souza', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mascote', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mata de S??o Jo??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Medeiros Neto', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miguel Calmon', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Milagres', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirangaba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirante', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Santo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morpar??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro do Chap??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mortugaba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mucug??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mucuri', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mulungu do Morro', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mundo Novo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muniz Ferreira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muqu??m de S??o Francisco', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muritiba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mutu??pe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazar??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nilo Pe??anha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nordestina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Cana??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova F??tima', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ibi??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Itarana', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Reden????o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Soure', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Vi??osa', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Horizonte', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Triunfo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olindina', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oliveira Dos Brejinhos', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouri??angas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ourol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmas de Monte Alto', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeiras', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paramirim', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paratinga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paripiranga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pau Brasil', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo Afonso', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('p?? de Serra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedr??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Alexandre', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piat??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pil??o Arcado', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinda??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindoba??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pintadas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pira?? do Norte', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirip??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piritiba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planaltino', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planalto', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po????es', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pojuca', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponto Novo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Seguro', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Potiragu??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prado', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Dutra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente J??nio Quadros', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Tancredo Neves', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queimadas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quijingue', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quixabeira', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rafael Jambeiro', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Remanso', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Retirol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o Das Neves', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riach??o do Jacu??pe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho de Santana', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeira do Amparo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeira do Pombal', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o do Largo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio de Contas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Ant??nio', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Pires', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Real', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rodelas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ruy Barbosa', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salinas da Margarida', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salvador', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Br??gida', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz Cabr??lia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz da Vit??ria', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa In??s', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santaluz', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria da Vit??ria', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santan??polis', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita de C??ssia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Teresinha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Amaro', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio de Jesus', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Est??v??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Desid??rio', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix do Coribe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Felipe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Conde', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gabriel', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo Dos Campos', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Vit??ria', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Jacu??pe', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel Das Matas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Pass??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapea??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tiro Dias', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saubara', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sa??de', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Seabra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sebasti??o Laranjeiras', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senhor do Bonfim', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra do Ramalho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sento s??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Dourada', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Preta', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrinha', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sim??es Filho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tio do Mato', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tio do Quinto', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sobradinho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Souto Soares', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabocas do Brejo Velho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tanha??u', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tanque Novo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tanquinho', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapero??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapiramut??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teixeira de Freitas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teodoro Sampaio', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teofil??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teol??ndia', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Nova', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tremedal', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tucano', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uau??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uba??ra', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubaitaba', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubat??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uiba??', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umburanas', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Una', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urandi', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uru??uca', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Utinga', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valen??a', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valente', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea da Ro??a', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea do Po??o', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea Nova', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varzedo', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera Cruz', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vereda', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria da Conquista', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wagner', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wanderley', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wenceslau Guimar??es', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xique-xique', 5);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abadia Dos Dourados', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abaet??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abre Campo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acaiaca', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('A??ucena', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Boa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Comprida', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aguanil', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas Formosas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas Vermelhas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aimor??s', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aiuruoca', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alagoa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Albertina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Al??m Para??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alfenas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alfredo Vasconcelos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almenara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alpercata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alpin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alterosa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Capara??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Rio Doce', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvarenga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amparo do Serra', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andradas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira de Paje??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andrel??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angel??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Carlos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Dias', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Prado de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??a??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aracitaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??ua??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguari', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arantina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araponga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapor??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapu??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??jos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arax??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arceburgo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arcos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areado', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Argirita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aricanduva', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arinos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Astolfo Dutra', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atal??ia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Augusto de Lima', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baependi', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baldim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bambu??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bandeira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bandeira do Sul', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o de Cocais', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o de Monte Alto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barbacena', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Longa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barroso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belmiro Braga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belo Horizonte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belo Oriente', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belo Vale', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Berilo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bert??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Berizal', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Betim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bias Fortes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bicas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Biquinhas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Esperan??a', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bocaina de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bocai??va', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Despacho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jardim de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus da Penha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Amparo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Galho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Repouso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Sucesso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonfim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonfin??polis de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonito de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borda da Mata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Botelhos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Botumirim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasil??ndia de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bras??lia de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Br??s Pires', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bra??nas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bras??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brumadinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bueno Brand??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buen??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bugre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritizeiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabeceira Grande', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabo Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira da Prata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira Dourada', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caetan??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caet??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caiana', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajuri', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caldas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camacho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camanducaia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambu??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambuquira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campan??rio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campanha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campestre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Azul', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Belo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo do Meio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Florido', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Altos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Gerais', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cana??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Can??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cana Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candeias', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cantagalo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capara??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capela Nova', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capelinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capetinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capim Branco', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o Andrade', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o En??as', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??lio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caputira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cara??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carana??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caranda??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carangola', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caratinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carbonita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carea??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carlos Chagas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carm??sia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo da Cachoeira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo da Mata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo do Cajuru', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo do Parana??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo do Rio Claro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carm??polis de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carneirinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carrancas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carvalh??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carvalhos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casa Grande', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cascalho Rico', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ssia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o da Barra de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cataguases', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catas Altas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catas Altas da Noruega', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catuji', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catuti', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caxambu', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cedro do Abaet??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Central de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Centralina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ch??cara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chal??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapada do Norte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapada Ga??cha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chiador', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cipot??nea', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Claraval', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Claro Dos Po????es', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cl??udio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coimbra', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coluna', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Comendador Gomes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Comercinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o da Aparecida', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o Das Pedras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o Das Alagoas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o de Ipanema', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Mato Dentro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Par??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Rio Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o Dos Ouros', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??nego Marinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Confins', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Congonhal', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Congonhas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Congonhas do Norte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conquista', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conselheiro Lafaiete', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conselheiro Pena', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Consola????o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Contagem', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coqueiral', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cora????o de Jesus', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cordisburgo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cordisl??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corinto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coroaci', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coromandel', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Fabriciano', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Murta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Pacheco', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Xavier Chaves', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??rrego Danta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??rrego do Bom Jesus', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??rrego Fundo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??rrego Novo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Couto de Magalh??es de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cris??lita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristais', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crist??lia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristiano Otoni', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crucil??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro da Fortaleza', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz??lia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cuparaque', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curral de Dentro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curvelo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Datas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Delfim Moreira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Delfin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Delta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Descoberto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Desterro de Entre Rios', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Desterro do Melo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diamantina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diogo de Vasconcelos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dion??sio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divin??sia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divino', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divino Das Laranjeiras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divinol??ndia de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divisa Alegre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divisa Nova', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divis??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Bosco', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Cavati', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Joaquim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Silv??rio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Vi??oso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dona Eus??bia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dores de Campos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dores de Guanh??es', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dores do Indai??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dores do Turvo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dores??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Douradoquara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Durand??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('El??i Mendes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Engenheiro Caldas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Engenheiro Navarro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre Folhas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre Rios de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erv??lia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esmeraldas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Espera Feliz', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Espinosa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esp??rito Santo do Dourado', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estiva', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela Dalva', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela do Indai??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela do Sul', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eugen??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ewbank da C??mara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Extrema', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fama', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faria Lemos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fel??cio Dos Santos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Rio Preto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Felisburgo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Felixl??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernandes Tourinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ferros', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fervedouro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Florestal', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formiga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formoso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortaleza de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortuna de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Badar??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Dumont', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco s??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisc??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Gaspar', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Inoc??ncio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Lagonegro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fronteira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fronteira Dos Vales', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fruta de Leite', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frutal', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Funil??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Galil??ia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gameleiras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Glaucil??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goiabeira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goian??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gon??alves', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gonzaga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gouveia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Valadares', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gr??o Mogol', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Grupiara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guanh??es', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guap??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraciaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraciama', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaran??sia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarani', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarar??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarda-mor', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaxup??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guidoval', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guimar??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guiricema', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gurinhat??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Heliodora', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iapu', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibertioga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibi??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibia??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiracatu', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiraci', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirit??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiti??ra de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibituruna', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Icara?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarap??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igaratinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguatama', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ijaci', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilic??nea', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imb?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inconfidentes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indaiabira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indian??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inga??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhapim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inha??ma', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inimutaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipanema', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipatinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipia??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipui??na', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ira?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabirinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabirito', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacambira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacarambi', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaguara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaip??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itajub??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamarandiba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamarati de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itambacuri', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamb?? do Mato Dentro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamogi', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamonte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itanhandu', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itanhomi', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaobim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapagipe', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapecerica', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapeva', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatiaiu??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??na', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaverava', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itueta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ituiutaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itumirim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iturama', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itutinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaboticatubas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacinto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacu??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacutinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguara??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ja??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jampruca', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jana??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Janu??ria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japara??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japonvar', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jeceaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jenipapo de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jequeri', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jequita??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jequitib??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jequitinhonha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jesu??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joa??ma', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joan??sia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Monlevade', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Pinheiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joaquim Fel??cio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jord??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jos?? Gon??alves de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jos?? Raydan', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Josen??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Uni??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juatuba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juiz de Fora', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juramento', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juruaia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juven??lia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ladainha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagamar', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa da Prata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Dos Patos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Dourada', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Formosa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Grande', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Santa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lambari', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lamim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranjal', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lassance', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lavras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Leandro Ferreira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Leme do Prado', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Leopoldina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Liberdade', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lima Duarte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Limeira do Oeste', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lontra', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luisburgo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luisl??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lumin??rias', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luz', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Machacalis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Machado', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Madre de Deus de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Malacacheta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mamonas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manhua??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manhumirim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mantena', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maravilhas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mar de Espanha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maria da f??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mariana', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marilac', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('M??rio Campos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marip?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marli??ria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marmel??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Martinho Campos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Martins Soares', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mata Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Materl??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mateus Leme', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matias Barbosa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matias Cardoso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matip??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mato Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matozinhos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matutina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Medeiros', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Medina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mendes Pimentel', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Merc??s', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mesquita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Minas Novas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Minduri', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirabela', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miradouro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mira??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirav??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moeda', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moema', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monjolos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monsenhor Paulo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montalv??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Azul', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Belo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Carmelo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Formoso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Santo de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montes Claros', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Si??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montezuma', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morada Nova de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro da Gar??a', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro do Pilar', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Munhoz', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muria??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mutum', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muzambinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nacip Raydan', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nanuque', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Naque', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Natal??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nat??rcia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazareno', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nepomuceno', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ninheira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Bel??m', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Era', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Lima', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova M??dica', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ponte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Porteirinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Resende', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Serrana', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Cruzeiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Oriente de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novorizonte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olaria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Olhos-d''??gua', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ol??mpio Noronha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oliveira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oliveira Fortes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('On??a de Pitangui', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Orat??rios', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oriz??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Branco', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Fino', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Preto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Verde de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Padre Carvalho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Padre Para??so', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paineiras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pains', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pai Pedro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paiva', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palma', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palm??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Papagaios', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paracatu', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Par?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paragua??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parais??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paraopeba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passab??m', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passa Quatro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passa Tempo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passa-vinte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patos de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patroc??nio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patroc??nio do Muria??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paula C??ndido', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulistas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pav??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pe??anha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Azul', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Bonita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra do Anta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra do Indai??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Dourada', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedralva', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedras de Maria da Cruz', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedrin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Leopoldo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Teixeira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pequeri', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pequi', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Perdig??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Perdizes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Perd??es', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Periquito', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pescador', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piau', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piedade de Caratinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piedade de Ponte Nova', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piedade do Rio Grande', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piedade Dos Gerais', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pimenta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pingo-d''??gua', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pint??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piracema', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirajuba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piranga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirangu??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piranguinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirapetinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirapora', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pira??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pitangui', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piumhi', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planura', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Fundo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??os de Caldas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pocrane', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pomp??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Nova', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponto Chique', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponto Dos Volantes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porteirinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Firme', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pot??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pouso Alegre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pouso Alto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prados', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prat??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pratinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Bernardes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Juscelino', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Kubitschek', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Oleg??rio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Jequitib??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prudente de Morais', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quartel Geral', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queluzito', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Raposos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Raul Soares', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Recreio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reduto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Resende Costa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Resplendor', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ressaquinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riachinho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riacho Dos Machados', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Das Neves', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Vermelho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Acima', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Casca', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Doce', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Prado', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Espera', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Manso', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Novo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Parana??ba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Pardo de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Piracicaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Pomba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Preto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Vermelho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rit??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rochedo de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rodeiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Romaria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ros??rio da Limeira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rubelita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rubim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sabar??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sabin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sacramento', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salinas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto da Divisa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara do Leste', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara do Monte Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara do Tug??rio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz de Salinas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Escalvado', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Efig??nia de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa f?? de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Helena de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Juliana', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Luzia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Margarida', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria de Itabira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Salto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Sua??u??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana da Vargem', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana de Cataguases', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana de Pirapama', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Deserto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Garamb??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Jacar??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Manhua??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Para??so', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Riacho', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana Dos Montes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita de Caldas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita de Jacutinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita de Ibitipoca', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Itueto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Sapuca??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa da Serra', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Vit??ria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Amparo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Aventureiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Grama', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Itamb??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Jacinto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Monte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Retiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Rio Abaixo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Hip??lito', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santos Dumont', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento Abade', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Br??s do Sua??u??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos Das Dores', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Prata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Paula', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Sales', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Gl??ria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Geraldo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Geraldo da Piedade', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Geraldo do Baixio', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Abaet??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Par??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Rio Abaixo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo do Sapuca??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gotardo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Batista do Gl??ria', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Lagoa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Mata', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Ponte', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Das Miss??es', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Del Rei', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Manhua??u', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Manteninha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Oriente', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Pacu??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Para??so', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Evangelista', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Nepomuceno', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Joaquim de Bicas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Barra', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Lapa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Safira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Varginha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Alegre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Divino', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Goiabal', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Jacuri', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Mantimento', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Louren??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Anta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro da Uni??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro Dos Ferros', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Sua??u??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Rom??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Roque de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o da Bela Vista', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o da Vargem Alegre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Anta', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Maranh??o', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Oeste', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Para??so', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Rio Preto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Rio Verde', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Tiago', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Tom??s de Aquino', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Thom?? Das Letras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vicente de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapuca??-mirim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sardo??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sarzedo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Setubinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sem-peixe', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Amaral', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Cortes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Firmino', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Jos?? Bento', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Modestino Gon??alves', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senhora de Oliveira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senhora do Porto', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senhora Dos Rem??dios', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sericita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Seritinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Azul de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra da Saudade', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Dos Aimor??s', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra do Salitre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrania', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serran??polis de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serranos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sete Lagoas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silveir??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silvian??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sim??o Pereira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Simon??sia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sobr??lia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Soledade de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabuleiro', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taiobeiras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taparuba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapira', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapira??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquara??u de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tarumirim', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teixeiras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Te??filo Otoni', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tim??teo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tiradentes', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tiros', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tocantins', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tocos do Moji', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Toledo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tombos', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Cora????es', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Marias', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Pontas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tumiritinga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupaciguara', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turmalina', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turvol??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ub??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uba??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubaporanga', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uberaba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uberl??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umburatiba', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Una??', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruana de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruc??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urucuia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Alegre', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Bonita', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Grande do Rio Pardo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varginha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varj??o de Minas', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea da Palma', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varzel??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vazante', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Verdel??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Veredinha', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ver??ssimo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vermelho Novo', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vespasiano', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vi??osa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vieiras', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mathias Lobato', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Virgem da Lapa', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Virg??nia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Virgin??polis', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Virgol??ndia', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Visconde do Rio Branco', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Volta Grande', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wenceslau Braz', 12);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Afonso Cl??udio', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guia Branca', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Doce do Norte', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alegre', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alfredo Chaves', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Rio Novo', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anchieta', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apiac??', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aracruz', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atilio Vivacqua', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baixo Guandu', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra de S??o Francisco', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Esperan??a', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Norte', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejetuba', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeiro de Itapemirim', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cariacica', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castelo', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colatina', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o da Barra', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o do Castelo', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divino de S??o Louren??o', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Domingos Martins', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dores do Rio Preto', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ecoporanga', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fund??o', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Lindenberg', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gua??u??', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarapari', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibatiba', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibira??u', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibitirama', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iconha', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irupi', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itagua??u', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapemirim', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itarana', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('I??na', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguar??', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jer??nimo Monteiro', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Neiva', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranja da Terra', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Linhares', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manten??polis', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marata??zes', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marechal Floriano', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maril??ndia', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mimoso do Sul', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montanha', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mucurici', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muniz Freire', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muqui', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ven??cia', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pancas', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Can??rio', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinheiros', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pi??ma', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponto Belo', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Kennedy', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Bananal', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Novo do Sul', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Leopoldina', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria de Jetib??', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Teresa', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Norte', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gabriel da Palha', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Cal??ado', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Mateus', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Roque do Cana??', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sooretama', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Alta', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Venda Nova do Imigrante', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Viana', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Pav??o', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Val??rio', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Velha', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria', 7);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angra Dos Reis', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aperib??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araruama', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areal', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arma????o Dos B??zios', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arraial do Cabo', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Pira??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Mansa', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belford Roxo', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jardim', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Itabapoana', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabo Frio', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeiras de Macacu', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambuci', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carapebus', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Comendador Levy Gasparian', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Dos Goytacazes', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cantagalo', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cardoso Moreira', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casimiro de Abreu', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Concei????o de Macabu', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cordeiro', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Duas Barras', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Duque de Caxias', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Engenheiro Paulo de Frontin', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guapimirim', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguaba Grande', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabora??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itagua??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Italva', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaocara', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaperuna', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatiaia', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japeri', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laje do Muria??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maca??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macuco', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mag??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mangaratiba', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maric??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mendes', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mesquita', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miguel Pereira', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miracema', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Natividade', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nil??polis', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Niter??i', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Friburgo', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Igua??u', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paracambi', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??ba do Sul', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parati', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paty do Alferes', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Petr??polis', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinheiral', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pira??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porci??ncula', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Real', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quatis', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queimados', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quissam??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Resende', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Bonito', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Claro', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Das Flores', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Das Ostras', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio de Janeiro', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria Madalena', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio de P??dua', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Itabapoana', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Fid??lis', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gon??alo', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Barra', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o de Meriti', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? de Ub??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Vale do Rio Preto', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro da Aldeia', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Alto', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapucaia', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saquarema', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serop??dica', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silva Jardim', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sumidouro', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tangu??', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teres??polis', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trajano de Morais', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Rios', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valen??a', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varre-sai', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vassouras', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Volta Redonda', 18);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Adamantina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Adolfo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agua??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas da Prata', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas de Lind??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas de Santa B??rbara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas de S??o Pedro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agudos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alambari', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alfredo Marcondes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altair', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Alegre', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alum??nio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??lvares Florence', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??lvares Machado', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??lvaro de Carvalho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvinl??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Americana', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Am??rico Brasiliense', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Am??rico de Campos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amparo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anal??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andradina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angatuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anhembi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anhumas', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apia??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??ariguama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??atuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??oiaba da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aramina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arandu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arape??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araraquara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arco-??ris', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arealva', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Areias', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arei??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ariranha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Artur Nogueira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aruj??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Asp??sia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atibaia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Auriflama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ava??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Avanhandava', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Avar??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bady Bassitt', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balbinos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('B??lsamo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bananal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o de Antonina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barbosa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bariri', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Bonita', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Chap??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Turvo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barretos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barrinha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barueri', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bastos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Batatais', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bauru', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bebedouro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bento de Abreu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bernardino de Campos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bertioga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bilac', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Birigui', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Biritiba-mirim', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Esperan??a do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bocaina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bofete', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boituva', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus Dos Perd??es', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Sucesso de Itarar??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bor??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borac??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borborema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borebi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Botucatu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bragan??a Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bra??na', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brejo Alegre', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brodowski', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brotas', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buri', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritizal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabr??lia Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabre??va', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ca??apava', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caconde', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cafel??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caiabu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caieiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caiu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajamar', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajati', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajobi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cajuru', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina do Monte Alegre', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campinas', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Limpo Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos do Jord??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Novos Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canan??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canas', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ndido Mota', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ndido Rodrigues', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canitar', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cap??o Bonito', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capela do Alto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capivari', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caraguatatuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carapicu??ba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cardoso', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casa Branca', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ssia Dos Coqueiros', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castilho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catanduva', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catigu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cedral', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerqueira C??sar', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerquilho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ces??rio Lange', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Charqueada', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Clementina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Col??mbia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conchal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conchas', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cordeir??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coroados', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Macedo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corumbata??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cosm??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cosmorama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cotia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cravinhos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristais Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz??lia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cubat??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cunha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Descalvado', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diadema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dirce Reis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divinol??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dobrada', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois C??rregos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dolcin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dourado', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dracena', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Duartina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dumont', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Echapor??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eldorado', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Elias Fausto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Elisi??rio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Emba??ba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Embu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Embu-gua??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Emilian??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Engenheiro Coelho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esp??rito Santo do Pinhal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esp??rito Santo do Turvo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela do Norte', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Euclides da Cunha Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fartura', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernand??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernando Prestes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fern??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ferraz de Vasconcelos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flora Rica', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floreal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fl??rida Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flor??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Franca', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Morato', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Franco da Rocha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gabriel Monteiro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('G??lia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gar??a', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gast??o Vidigal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gavi??o Peixoto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('General Salgado', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Getulina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Glic??rio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guai??ara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaimb??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gua??ra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guapia??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guapiara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guar??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guara??a??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraci', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarani D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarant??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guararapes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guararema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaratinguet??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guare??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guariba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaruj??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarulhos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guatapar??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guzol??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hercul??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Holambra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hortol??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iacanga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iacri', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iaras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibat??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibir??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirarema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibitinga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibi??na', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ic??m', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iep??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igara??u do Tiet??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarapava', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igarat??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguape', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilhabela', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilha Comprida', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilha Solteira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indaiatuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indiana', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indiapor??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('In??bia Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipaussu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iper??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipe??na', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipigu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iporanga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iracem??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irapuru', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaber??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itajobi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaju', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itanha??m', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??ca', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapecerica da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapetininga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapeva', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapevi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapirapu?? Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('It??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaporanga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapura', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaquaquecetuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itarar??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itariri', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatiba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatinga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itirapina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itirapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itobi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itupeva', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ituverava', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaborandi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaboticabal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacare??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaci', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacupiranga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguari??na', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jales', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jambeiro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jandira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jarinu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ja??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jeriquara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joan??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jo??o Ramalho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jos?? Bonif??cio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('J??lio Mesquita', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jumirim', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jundia??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Junqueir??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juqui??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juquitiba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoinha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranjal Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lav??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lavrinhas', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Leme', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Len????is Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Limeira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lind??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lins', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lorena', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lourdes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Louveira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luc??lia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lucian??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lu??s Ant??nio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luizi??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lup??rcio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lut??cia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macatuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macaubal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maced??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Magda', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mairinque', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mairipor??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manduri', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marab?? Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maraca??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marapoama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mari??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mar??lia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Martin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mat??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mau??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mendon??a', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Meridiano', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mes??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miguel??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mineiros do Tiet??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miracatu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mira Estrela', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirand??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirante do Paranapanema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirassol', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirassol??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mococa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moji Das Cruzes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mogi Gua??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moji-mirim', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mombuca', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mon????es', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mongagu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Apraz??vel', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Azul Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Castelo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monteiro Lobato', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Mor', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro Agudo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morungaba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Motuca', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Murutinga do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nantes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Narandiba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Natividade da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nazar?? Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Neves Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nhandeara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nipo??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Alian??a', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Campina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Cana?? Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Castilho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Europa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Granada', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Guataporanga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Independ??ncia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novais', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Luzit??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Odessa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Horizonte', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nuporanga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ocau??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??leo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ol??mpia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Onda Verde', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oriente', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Orindi??va', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Orl??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Osasco', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Oscar Bressane', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Osvaldo Cruz', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ourinhos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouroeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Verde', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pacaembu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palestina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmares Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeira D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmital', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Panorama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paragua??u Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paraibuna', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??so', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranapanema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pardinho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pariquera-a??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parisi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Patroc??nio Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulic??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paul??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulist??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo de Faria', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pederneiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Bela', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedran??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedregulho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedreira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedrinhas Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro de Toledo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pen??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pereira Barreto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pereiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peru??be', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piacatu', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piedade', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pilar do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindamonhangaba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pindorama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhalzinho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piquerobi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piquete', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piracaia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piracicaba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piraju', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piraju??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirangi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirapora do Bom Jesus', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirapozinho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirassununga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piratininga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pitangueiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planalto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Platina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Poloni', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pomp??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponga??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontalinda', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontes Gestal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Populina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porangaba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Feliz', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Ferreira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Potim', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Potirendaba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pracinha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prad??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Praia Grande', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prat??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Alves', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Bernardes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Epit??cio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Prudente', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Venceslau', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Promiss??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quadra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quat??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queiroz', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Queluz', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quintana', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rafard', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rancharia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reden????o da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Regente Feij??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Regin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Registro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Restinga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Bonito', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Branco', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Corrente', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Dos ??ndios', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Grande', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Pires', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Preto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riversul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rifaina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rinc??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rin??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Claro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Das Pedras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Grande da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riol??ndia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rosana', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Roseira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rubi??cea', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rubin??ia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sabino', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sagres', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sales', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sales Oliveira', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sales??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salmour??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saltinho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto de Pirapora', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto Grande', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sandovalina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Ad??lia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Albertina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Branca', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Clara D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz da Concei????o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz da Esperan??a', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz Das Palmeiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Rio Pardo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Ernestina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa f?? do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Gertrudes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Isabel', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa L??cia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Mercedes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana da Ponte Pensa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana de Parna??ba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita D''oeste', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Passa Quatro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa de Viterbo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Salete', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Anast??cio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Andr??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio da Alegria', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio de Posse', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Aracangu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Jardim', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Pinhal', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Expedito', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sant??polis do Aguape??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento do Sapuca??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bernardo do Campo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Caetano do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Carlos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Boa Vista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Das Duas Pontes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o de Iracema', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Pau D''alho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Joaquim da Barra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Bela Vista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Barreiro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Rio Pardo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Rio Preto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Campos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Louren??o da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??s do Paraitinga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Manuel', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel Arcanjo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Paulo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Turvo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Roque', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o da Grama', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sim??o', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vicente', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sarapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sarutai??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sebastian??polis do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Azul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serrana', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Negra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sert??ozinho', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sete Barras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sever??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silveiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Socorro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sorocaba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sud Mennucci', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sumar??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Suzano', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Suzan??polis', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabapu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabatinga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabo??o da Serra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taciba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tagua??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taia??u', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tai??va', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tamba??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tanabi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapira??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapiratiba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquaral', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquaritinga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquarituba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquariva??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tarabai', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tarum??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tatu??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taubat??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tejup??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teodoro Sampaio', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Roxa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tiet??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timburi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Torre de Pedra', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Torrinha', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trabiju', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trememb??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Fronteiras', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tuiuti', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tup??', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupi Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turi??ba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turmalina', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubarana', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubatuba', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubirajara', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uchoa', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ur??nia', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uru', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urup??s', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valentim Gentil', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valinhos', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valpara??so', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Grande do Sul', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Grande Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea Paulista', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera Cruz', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vinhedo', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Viradouro', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vista Alegre do Alto', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria Brasil', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Votorantim', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Votuporanga', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Zacarias', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chavantes', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estiva Gerbi', 24);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abati??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Adrian??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agudos do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almirante Tamandar??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Altamira do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alt??nia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Piquiri', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amapor??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amp??re', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anahy', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andir??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??ngulo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Antonina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Olinto', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apucarana', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapongas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapoti', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arapu??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araruna', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arauc??ria', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ariranha do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assa??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Assis Chateaubriand', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Astorga', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atalaia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balsa Nova', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bandeirantes', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barbosa Ferraz', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barrac??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Jacar??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista da Caroba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista do Para??so', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bituruna', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Esperan??a', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Esperan??a do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Ventura de S??o Roque', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista da Aparecida', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bocai??va do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Sucesso', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Sucesso do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Borraz??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Braganey', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasil??ndia do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cafeara', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cafel??ndia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cafezal do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Calif??rnia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambar??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camb??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina da Lagoa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina do Sim??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina Grande do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Bonito', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo do Tenente', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Largo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Magro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Mour??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ndido de Abreu', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cand??i', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cantagalo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capanema', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o Le??nidas Marques', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carambe??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carl??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cascavel', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catanduvas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Centen??rio do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Azul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??u Azul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chopinzinho', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cianorte', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cidade Ga??cha', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Clevel??ndia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colombo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colorado', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Congonhinhas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conselheiro Mairinck', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Contenda', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corb??lia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corn??lio Proc??pio', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Domingos Soares', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Vivida', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corumbata?? do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz Machado', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzmaltina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curitiba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curi??va', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diamante do Norte', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diamante do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diamante D''oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Vizinhos', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Douradina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doutor Camargo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('En??as Marques', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Engenheiro Beltr??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esperan??a Nova', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre Rios do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Espig??o Alto do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Farol', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faxinal', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fazenda Rio Grande', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('F??nix', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fernandes Pinheiro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Figueira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flora??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flor da Serra do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floresta', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Florest??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fl??rida', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formosa do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Foz do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Alves', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Francisco Beltr??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Foz do Jord??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('General Carneiro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Godoy Moreira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goioer??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goioxim', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Grandes Rios', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gua??ra', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaira????', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guamiranga', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guapirama', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaporema', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraci', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarania??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarapuava', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraque??aba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaratuba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hon??rio Serpa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibaiti', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibema', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibipor??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Icara??ma', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguara??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguatu', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imba??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imbituva', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('In??cio Martins', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inaj??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indian??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipiranga', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipor??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iracema do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irati', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iretama', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaguaj??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaipul??ndia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itambarac??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itamb??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapejara D''oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaperu??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??na do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivaipor??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivat??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivatuba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaboti', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacarezinho', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguapit??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaria??va', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jandaia do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jani??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japur??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim Alegre', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim Olinda', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jataizinho', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jesu??tas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joaquim T??vora', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jundia?? do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juranda', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jussara', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Kalor??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lapa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranjal', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laranjeiras do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Le??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lidian??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lindoeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Loanda', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lobato', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Londrina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luiziana', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lunardelli', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lupion??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mallet', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mambor??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mandagua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mandaguari', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mandirituba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manfrin??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mangueirinha', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manoel Ribas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marechal C??ndido Rondon', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maria Helena', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marialva', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maril??ndia do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marilena', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mariluz', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maring??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mari??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marip??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marmeleiro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marquinho', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marumbi', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matel??ndia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matinhos', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mato Rico', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mau?? da Serra', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Medianeira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mercedes', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirador', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miraselva', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Missal', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moreira Sales', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morretes', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Munhoz de Melo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora Das Gra??as', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Alian??a do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Am??rica da Colina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Aurora', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Cantu', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Esperan??a', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Esperan??a do Sudoeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova F??tima', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Laranjeiras', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Londrina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ol??mpia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Santa B??rbara', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Santa Rosa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Prata do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Tebas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Itacolomi', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ortigueira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ourizona', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Verde do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pai??andu', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmital', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palotina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??so do Norte', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranacity', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranagu??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranapoema', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranava??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pato Bragado', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pato Branco', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paula Freitas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo Frontin', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peabiru', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Perobal', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('P??rola', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('P??rola D''oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pi??n', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhais', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhal??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhal de S??o Bento', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinh??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pira?? do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piraquara', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pitanga', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pitangueiras', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planaltina do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planalto', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponta Grossa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontal do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porecatu', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Amazonas', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Barreiro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Rico', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Vit??ria', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prado Ferreira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pranchita', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Castelo Branco', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Primeiro de Maio', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prudent??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quarto Centen??rio', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quatigu??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quatro Barras', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quatro Pontes', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quedas do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quer??ncia do Norte', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quinta do Sol', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quitandinha', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ramil??ndia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rancho Alegre', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rancho Alegre D''oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Realeza', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rebou??as', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Renascen??a', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reserva', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reserva do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Claro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o do Pinhal', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Azul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Bom', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Bonito do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Branco do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Branco do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Negro', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rol??ndia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Roncador', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rondon', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ros??rio do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sab??udia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salgado Filho', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto do Itarar??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto do Lontra', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Am??lia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cec??lia do Pav??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz de Monte Castelo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa f??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Helena', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa In??s', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Isabel do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Izabel do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa L??cia', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Mariana', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa M??nica', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Itarar??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Tereza do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha de Itaipu', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio da Platina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Caiu??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Para??so', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Sudoeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo In??cio', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Carlos do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jer??nimo da Serra', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Caiu??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Triunfo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jorge D''oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jorge do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jorge do Patroc??nio', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? da Boa Vista', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Das Palmeiras', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Pinhais', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Manoel do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Mateus do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Iva??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o da Amoreira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Tom??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapopema', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sarandi', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saudade do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Seng??s', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serran??polis do Igua??u', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sertaneja', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sertan??polis', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Siqueira Campos', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sulina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tamarana', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tamboara', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapejara', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapira', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teixeira Soares', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tel??maco Borba', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Boa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Rica', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Roxa', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tibagi', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tijucas do Sul', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Toledo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tomazina', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Barras do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tunas do Paran??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tuneiras do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tup??ssi', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turvo', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubirat??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Umuarama', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o da Vit??ria', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uniflor', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ura??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Wenceslau Braz', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ventania', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera Cruz do Oeste', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ver??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Alta', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doutor Ulysses', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Virmond', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vitorino', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xambr??', 15);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abdon Batista', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abelardo Luz', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agrol??ndia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agron??mica', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Doce', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas de Chapec??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas Frias', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas Mornas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alfredo Wagner', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Bela Vista', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anchieta', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Angelina', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anita Garibaldi', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anit??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Carlos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Api??na', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arabut??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araquari', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ararangu??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Armaz??m', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio Trinta', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arvoredo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ascurra', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Atalanta', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aurora', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balne??rio Arroio do Silva', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balne??rio Cambori??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balne??rio Barra do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balne??rio Gaivota', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bandeirante', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Bonita', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Velha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista do Toldo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Belmonte', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Benedito Novo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bigua??u', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Blumenau', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bocaina do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bombinhas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jardim da Serra', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Retiro', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Botuver??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bra??o do Norte', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bra??o do Trombudo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brun??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brusque', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ca??ador', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caibi', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Calmon', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambori??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cap??o Alto', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Alegre', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Belo do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Er??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Novos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canelinha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canoinhas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capinzal', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capivari de Baixo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catanduvas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caxambu do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Celso Ramos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Negro', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapad??o do Lageado', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapec??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocal do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conc??rdia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cordilheira Alta', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Freitas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Martins', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corup??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Correia Pinto', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crici??ma', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cunha Por??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cunhata??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curitibanos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Descanso', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dion??sio Cerqueira', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dona Emma', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doutor Pedrinho', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre Rios', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ermo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erval Velho', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faxinal Dos Guedes', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flor do Sert??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Florian??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formosa do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Forquilhinha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fraiburgo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frei Rog??rio', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Galv??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Garopaba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Garuva', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gaspar', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Governador Celso Ramos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gr??o Par??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gravatal', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guabiruba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaraciaba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaramirim', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guaruj?? do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guatamb??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Herval D''oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiam', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibicar??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirama', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('I??ara', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ilhota', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imaru??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imbituba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imbuia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indaial', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iomer??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipira', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipor?? do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipua??u', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipumirim', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iraceminha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irani', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irati', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Irine??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('It??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itai??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaja??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapema', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapiranga', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapo??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ituporanga', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jabor??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacinto Machado', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguaruna', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaragu?? do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardin??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joa??aba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Joinville', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jos?? Boiteux', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jupi??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lacerd??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lages', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laguna', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajeado Grande', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laurentino', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lauro Muller', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lebon R??gis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Leoberto Leal', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lind??ia do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lontras', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luiz Alves', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luzerna', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Macieira', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mafra', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Major Gercino', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Major Vieira', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maracaj??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maravilha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marema', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Massaranduba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matos Costa', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Meleiro', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirim Doce', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Modelo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monda??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Carlo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Castelo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro da Fuma??a', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro Grande', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Navegantes', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Erechim', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Itaberaba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Trento', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Veneza', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Horizonte', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Orleans', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Otac??lio Costa', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Verde', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paial', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Painel', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palho??a', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palma Sola', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeira', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmitos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Papanduva', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??so', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passo de Torres', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passos Maia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo Lopes', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedras Grandes', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Penha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peritiba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pescaria Brava', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Petrol??ndia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pi??arras', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhalzinho', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinheiro Preto', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piratuba', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planalto Alegre', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pomerode', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Alta', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Alta do Norte', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Serrada', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Belo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Uni??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pouso Redondo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Praia Grande', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Castelo Branco', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Get??lio', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Nereu', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Princesa', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quilombo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rancho Queimado', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Das Antas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Campo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Dos Cedros', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Fortuna', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Negrinho', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Rufino', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riqueza', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rodeio', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Romel??ndia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salete', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saltinho', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto Veloso', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sang??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cec??lia', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Helena', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa de Lima', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha do Progresso', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santiago do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Amaro da Imperatriz', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bernardino', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bento do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Bonif??cio', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Carlos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Cristov??o do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o Batista', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Itaperi??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Joaquim', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Cedro', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Cerrito', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Louren??o do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Ludgero', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Martinho', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel da Boa Vista', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro de Alc??ntara', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saudades', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Schroeder', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Seara', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Alta', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sider??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sombrio', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sul Brasil', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tai??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tangar??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tigrinhos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tijucas', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timb?? do Sul', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timb??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Timb?? Grande', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Barras', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Treviso', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Treze de Maio', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Treze T??lias', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trombudo Central', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tubar??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tun??polis', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turvo', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o do Oeste', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urubici', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urupema', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urussanga', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varge??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vargem Bonita', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vidal Ramos', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Videira', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vitor Meireles', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Witmarsum', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xanxer??', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xavantina', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xaxim', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Zort??a', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balne??rio Rinc??o', 23);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acegu??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Santa', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Agudo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ajuricaba', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alecrim', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alegrete', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alegria', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Almirante Tamandar?? do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alpestre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Alegre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Feliz', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amaral Ferrador', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ametista do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Andr?? da Rocha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anta Gorda', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Prado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arambar??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araric??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aratiba', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio do Meio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio do Sal', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio do Padre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio Dos Ratos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio do Tigre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arroio Grande', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Arvorezinha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Augusto Pestana', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??urea', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bag??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Balne??rio Pinhal', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o de Cotegipe', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o do Triunfo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barrac??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Guarita', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Quara??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Ribeiro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Rio Azul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra Funda', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barros Cassal', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Benjamin Constant do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bento Gon??alves', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Buric??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Cadeado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Incra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boa Vista do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Princ??pio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Progresso', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Retiro do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Boqueir??o do Le??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bossoroca', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bozano', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Braga', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brochier', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buti??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ca??apava do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacequi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeirinha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cacique Doble', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caibat??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cai??ara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camaqu??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camargo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cambar?? do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campestre da Serra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campinas do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Bom', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Novo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Borges', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candel??ria', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ndido God??i', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Candiota', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canela', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cangu??u', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canoas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canudos do Vale', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cap??o Bonito do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cap??o da Canoa', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cap??o do Cip??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cap??o do Le??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capivari do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capela de Santana', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Capit??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carazinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cara??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carlos Barbosa', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carlos Gomes', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Casca', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caseiros', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catu??pe', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caxias do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Centen??rio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerrito', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Branco', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Grande', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Grande do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cerro Largo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapada', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Charqueadas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Charrua', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chiapetta', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chu??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chuvisca', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cidreira', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cir??aco', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colinas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colorado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Condor', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Constantina', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coqueiro Baixo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coqueiros do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Barros', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Bicaco', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Pilar', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cotipor??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coxilha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crissiumal', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristal', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristal do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruz Alta', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzaltense', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cruzeiro do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('David Canabarro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Derrubadas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dezesseis de Novembro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dilermando de Aguiar', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Irm??os', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Irm??os Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Lajeados', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Feliciano', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Pedro de Alc??ntara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Pedrito', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dona Francisca', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doutor Maur??cio Cardoso', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doutor Ricardo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eldorado do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Encantado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Encruzilhada do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Engenho Velho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre-iju??s', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Entre Rios do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erebango', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erechim', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ernestina', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Herval', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erval Grande', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Erval Seco', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esmeralda', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esperan??a do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Espumoso', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esta????o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Est??ncia Velha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Esteio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela Velha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eug??nio de Castro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fagundes Varela', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Farroupilha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faxinal do Soturno', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faxinalzinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fazenda Vilanova', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feliz', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flores da Cunha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Floriano Peixoto', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fontoura Xavier', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formigueiro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Forquetinha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fortaleza Dos Valos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Frederico Westphalen', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Garibaldi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Garruchos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gaurama', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('General C??mara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gentil', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Get??lio Vargas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Giru??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Glorinha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gramado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gramado Dos Loureiros', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gramado Xavier', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gravata??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guabiju', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gua??ba', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guapor??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarani Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Harmonia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Herveiras', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Horizontina', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hulha Negra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Humait??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibarama', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibia????', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibiraiaras', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirapuit??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ibirub??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Igrejinha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iju??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Il??polis', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imb??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Imigrante', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Independ??ncia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhacor??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ip??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipiranga do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ira??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itacurubi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapuca', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaqui', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itati', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itatiba do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivor??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivoti', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaboticaba', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacuizinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jacutinga', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguar??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaguari', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaquirana', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jari', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('J??ia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('J??lio de Castilhos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Bonita do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lago??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Dos Tr??s Cantos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Vermelha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajeado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lajeado do Bugre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lavras do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Liberato Salzano', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lindolfo Collor', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Linha Nova', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Machadinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ma??ambara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mampituba', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Manoel Viana', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maquin??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marat??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marau', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marcelino Ramos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mariana Pimentel', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mariano Moro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marques de Souza', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mata', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mato Castelhano', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mato Leit??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mato Queimado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maximiliano de Almeida', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Minas do Le??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miragua??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montauri', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre Dos Campos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Belo do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montenegro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morma??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morrinhos do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro Redondo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro Reuter', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mostardas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mu??um', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muitos Cap??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Muliterno', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('N??o-me-toque', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nicolau Vergueiro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nonoai', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Alvorada', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ara????', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Bassano', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Boa Vista', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Br??scia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Candel??ria', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Esperan??a do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Hartz', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova P??dua', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Palma', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Petr??polis', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Prata', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ramada', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Roma do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Santa Rita', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Cabrais', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Hamburgo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Machado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Tiradentes', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Xingu', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Barreiro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Os??rio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paim Filho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmares do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeira Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmitinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Panambi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pantano Grande', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??so do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pareci Novo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parob??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passa Sete', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passo do Sobrado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Passo Fundo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paulo Bento', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paverama', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedras Altas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Os??rio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peju??ara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pelotas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Picada Caf??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhal', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhal da Serra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinhal Grande', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinheirinho do Vale', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinheiro Machado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pinto Bandeira', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pirap??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piratini', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planalto', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Po??o Das Antas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pont??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Preta', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Port??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Alegre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Lucena', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Mau??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Vera Cruz', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Xavier', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pouso Novo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Presidente Lucena', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Progresso', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Prot??sio Alves', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Putinga', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quara??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quatro Irm??os', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quevedos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quinze de Novembro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Redentora', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Relvado', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Restinga Seca', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Dos ??ndios', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Grande', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Pardo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Riozinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Roca Sales', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rodeio Bonito', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rolador', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rolante', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ronda Alta', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rondinha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Roque Gonzales', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ros??rio do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sagrada Fam??lia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Saldanha Marinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto do Jacu??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salvador Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salvador do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sananduva', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cec??lia do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Clara do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Maria do Herval', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Margarida do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana da Boa Vista', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santana do Livramento', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Tereza', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Vit??ria do Palmar', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santiago', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo ??ngelo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Palma', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio da Patrulha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Planalto', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Augusto', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Cristo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Expedito do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Borja', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Assis', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Paula', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gabriel', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jer??nimo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Urtiga', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o do Pol??sine', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jorge', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Herval', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Hort??ncio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Inhacor??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Norte', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Ouro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Ausentes', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Leopoldo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Louren??o do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Luiz Gonzaga', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Marcos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Martinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Martinho da Serra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Nicolau', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Paulo Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro da Serra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Buti??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sebasti??o do Ca??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sep??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Valentim', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Valentim do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Val??rio do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vendelino', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Vicente do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapiranga', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapucaia do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sarandi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Seberi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sede Nova', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Segredo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Selbach', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Salgado Filho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sentinela do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serafina Corr??a', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??rio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sert??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sert??o Santana', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sete de Setembro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Severiano de Almeida', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silveira Martins', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sinimbu', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sobradinho', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Soledade', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taba??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapejara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapera', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapes', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquara', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquari', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquaru??u do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tavares', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tenente Portela', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra de Areia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teut??nia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tio Hugo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tiradentes do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Toropi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Torres', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tramanda??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Travesseiro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Arroios', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Cachoeiras', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Coroas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s de Maio', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Forquilhas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Palmeiras', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Passos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trindade do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Triunfo', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tucunduva', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tunas', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupanci do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupanciret??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tupandi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tuparendi', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turu??u', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ubiretama', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o da Serra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Unistalda', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruguaiana', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vacaria', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vale Verde', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vale do Sol', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vale Real', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vanini', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ven??ncio Aires', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera Cruz', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Veran??polis', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vespasiano Correa', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Viadutos', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Viam??o', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vicente Dutra', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Victor Graeff', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Flores', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila L??ngaro', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Maria', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Nova do Sul', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vista Alegre', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vista Alegre do Prata', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vista Ga??cha', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vit??ria Das Miss??es', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Westfalia', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Xangri-l??', 20);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Clara', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alcin??polis', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amamba??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anast??cio', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anauril??ndia', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ang??lica', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ant??nio Jo??o', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida do Taboado', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aquidauana', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aral Moreira', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bandeirantes', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bataguassu', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bataypor??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bodoquena', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonito', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasil??ndia', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caarap??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Camapu??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Grande', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caracol', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cassil??ndia', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapad??o do Sul', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corguinho', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coronel Sapucaia', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corumb??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Costa Rica', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Coxim', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Deod??polis', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dois Irm??os do Buriti', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Douradina', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dourados', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Eldorado', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('F??tima do Sul', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Figueir??o', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gl??ria de Dourados', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guia Lopes da Laguna', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iguatemi', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inoc??ncia', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapor??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaquira??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivinhema', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Japor??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaraguari', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jardim', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jate??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juti', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lad??rio', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Laguna Carap??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Maracaju', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Miranda', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mundo Novo', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Navira??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nioaque', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Alvorada do Sul', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Andradina', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Horizonte do Sul', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??so das ??guas', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parana??ba', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranhos', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedro Gomes', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponta Por??', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Murtinho', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribas do Rio Pardo', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Brilhante', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Negro', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Verde de Mato Grosso', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rochedo', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Pardo', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Gabriel do Oeste', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sete Quedas', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Selv??ria', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sidrol??ndia', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sonora', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tacuru', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquarussu', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terenos', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Lagoas', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vicentina', 11);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acorizal', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Boa', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alta Floresta', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Araguaia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Boa Vista', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Gar??as', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Paraguai', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Taquari', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apiac??s', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguaiana', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguainha', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araputanga', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aren??polis', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aripuan??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bar??o de Melga??o', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Bugres', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barra do Gar??as', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus do Araguaia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brasnorte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??ceres', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campin??polis', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Novo do Parecis', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Verde', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos de J??lio', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canabrava do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Canarana', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carlinda', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castanheira', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapada Dos Guimar??es', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cl??udia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocalinho', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Col??der', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colniza', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Comodoro', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Confresa', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Conquista D''oeste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cotrigua??u', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cuiab??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Curvel??ndia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Denise', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diamantino', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Dom Aquino', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Feliz Natal', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Figueir??polis D''oeste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ga??cha do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('General Carneiro', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gl??ria D''oeste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarant?? do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guiratinga', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indiava??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipiranga do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itanhang??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ita??ba', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itiquira', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaciara', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jangada', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jauru', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juara', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ju??na', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juruena', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Juscimeira', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lambari D''oeste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lucas do Rio Verde', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luci??ra', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Bela da Sant??ssima Trindade', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marcel??ndia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matup??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mirassol D''oeste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nobres', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nortel??ndia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nossa Senhora do Livramento', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Bandeirantes', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Nazar??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Lacerda', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Santa Helena', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Brasil??ndia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Cana?? do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Mutum', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ol??mpia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Ubirat??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Xavantina', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Mundo', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Horizonte do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo S??o Joaquim', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Parana??ta', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranatinga', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Santo Ant??nio', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pedra Preta', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Peixoto de Azevedo', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planalto da Serra', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pocon??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontal do Araguaia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ponte Branca', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontes e Lacerda', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Alegre do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Dos Ga??chos', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Esperidi??o', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porto Estrela', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Poxor??o', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Primavera do Leste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quer??ncia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? Dos Quatro Marcos', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Reserva do Caba??al', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??o Cascalheira', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ribeir??ozinho', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Branco', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Carmem', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Afonso', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Povo', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Rio Claro', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jos?? do Xingu', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Pedro da Cipa', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rondol??ndia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rondon??polis', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ros??rio Oeste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz do Xingu', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Salto do C??u', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Trivelato', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Leste', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Leverger', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o F??lix do Araguaia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sapezal', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serra Nova Dourada', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sinop', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sorriso', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tabapor??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tangar?? da Serra', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tapurah', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terra Nova do Norte', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tesouro', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Torixor??u', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uni??o do Sul', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vale de S??o Domingos', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('V??rzea Grande', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vera', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Rica', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Guarita', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Maril??ndia', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Maring??', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Monte Verde', 10);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abadia de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Abadi??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Acre??na', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Adel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Fria de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??gua Limpa', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('??guas Lindas de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alex??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alo??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Horizonte', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alto Para??so de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Alvorada do Norte', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amaralina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Americano do Brasil', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Amorin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('An??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anhanguera', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Anicuns', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida de Goi??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aparecida do Rio Doce', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Apor??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ara??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aragar??as', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aragoi??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Araguapaz', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aren??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Aruan??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Auril??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Avelin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Baliza', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Barro Alto', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bela Vista de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jardim de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bom Jesus de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bonfin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bon??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brazabrantes', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Brit??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti Alegre', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buriti de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Buritin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cabeceiras', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira Alta', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cachoeira Dourada', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ca??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caiap??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caldas Novas', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Caldazinha', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campestre de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campina??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campinorte', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Alegre de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campo Limpo de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Belos', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Campos Verdes', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Carmo do Rio Verde', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Castel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catal??o', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Catura??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cavalcante', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ceres', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cezarina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Chapad??o do C??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cidade Ocidental', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cocalzinho de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Colinas do Sul', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('C??rrego do Ouro', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corumb?? de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Corumba??ba', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristalina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cristian??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crix??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Crom??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Cumari', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Damian??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Damol??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Davin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Diorama', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Doverl??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Edealina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ed??ia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Estrela do Norte', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Faina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Fazenda Nova', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Firmin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Flores de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formosa', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Formoso', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gameleira de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Divin??polis de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goian??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goiandira', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goian??sia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goi??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goianira', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Goiatuba', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Gouvel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guap??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guara??ta', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarani de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Guarinos', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Heitora??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hidrol??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Hidrolina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Iaciara', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inaciol??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Indiara', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Inhumas', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipameri', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipiranga de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ipor??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Israel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itabera??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaguari', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaguaru', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itaj??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapaci', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapirapu??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itapuranga', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itarum??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itau??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Itumbiara', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ivol??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jandaia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaragu??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jata??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jaupaci', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jes??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jovi??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Jussara', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Lagoa Santa', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Leopoldo de Bulh??es', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Luzi??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mairipotaba', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mamba??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mara Rosa', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Marzag??o', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Matrinch??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mauril??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mimoso de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mina??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mineiros', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moipor??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Monte Alegre de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montes Claros de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montividiu', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Montividiu do Norte', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morrinhos', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Morro Agudo de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Moss??medes', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mozarl??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mundo Novo', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Mutun??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Naz??rio', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ner??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Niquel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Am??rica', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Aurora', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Crix??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Gl??ria', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Igua??u de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Roma', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Nova Veneza', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Brasil', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Gama', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Novo Planalto', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Orizona', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouro Verde de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Ouvidor', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Padre Bernardo', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palestina de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmeiras de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmelo', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Palmin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Panam??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Paranaiguara', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Para??na', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Perol??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Petrolina de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pilar de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piracanjuba', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piranhas', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Piren??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pires do Rio', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Planaltina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Pontalina', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porangatu', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Porteir??o', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Portel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Posse', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Professor Jamil', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Quirin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rialma', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rian??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Quente', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rio Verde', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Rubiataba', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Sanclerl??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa B??rbara de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Cruz de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa f?? de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Helena de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Isabel', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Araguaia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rita do Novo Destino', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Rosa de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Tereza de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santa Terezinha de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio da Barra', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Santo Ant??nio do Descoberto', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Domingos', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Francisco de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o D''alian??a', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Jo??o da Para??na', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??s de Montes Belos', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Lu??z do Norte', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Araguaia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Miguel do Passa Quatro', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Patr??cio', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??o Sim??o', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Senador Canedo', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Serran??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Silv??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Simol??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('S??tio D''abadia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Taquaral de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Teresina de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Terez??polis de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Tr??s Ranchos', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trindade', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Trombas', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turv??nia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Turvel??ndia', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uirapuru', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Urua??u', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruana', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Uruta??', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Valpara??so de Goi??s', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Varj??o', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vian??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vicentin??polis', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Boa', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Vila Prop??cio', 8);

INSERT INTO tb_cidade(nome_cidade, id_estado)
VALUES ('Bras??lia', 27);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000001', 'email1@gmail.com', 'cliente1', '2001-01-01', 'rua 1', 1, '00000001', 4);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000002', 'email2@gmail.com', 'cliente2', '2002-02-02', 'rua 2', 2, '00000002', 78);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000003', 'email3@gmail.com', 'cliente3', '2003-03-03', 'rua 3', 3, '00000003', 13);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000004', 'email4@gmail.com', 'cliente4', '2004-04-04', 'rua 4', 4, '00000004', 512);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000005', 'email5@gmail.com', 'cliente5', '2005-05-05', 'rua 5', 5, '00000005', 1025);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000006', 'email6@gmail.com', 'cliente6', '2006-06-06', 'rua 6', 6, '00000006', 870);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000007', 'email7@gmail.com', 'cliente7', '2007-07-07', 'rua 7', 7, '00000007', 91);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000008', 'email8@gmail.com', 'cliente8', '2008-08-08', 'rua 8', 8, '00000008', 69);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000009', 'email9@gmail.com', 'cliente9', '2009-09-09', 'rua 9', 9, '00000009', 425);

INSERT INTO tb_cliente(cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, id_cidade)
VALUES ('00000000010', 'email10@gmail.com', 'cliente10', '2010-10-10', 'rua 10', 10, '00000010', 111);

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 1');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 2');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 3');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 4');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 5');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 6');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 7');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 8');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 9');

INSERT INTO tb_produto(nome_produto)
VALUES ('produto 10');

INSERT INTO tb_tipo_atendimento(nome_tipo_atendimento)
VALUES ('Reclama????o');

INSERT INTO tb_tipo_atendimento(nome_tipo_atendimento)
VALUES ('D??vida');

INSERT INTO tb_tipo_atendimento(nome_tipo_atendimento)
VALUES ('Sugest??o');

INSERT INTO tb_tipo_atendimento(nome_tipo_atendimento)
VALUES ('Elogio');