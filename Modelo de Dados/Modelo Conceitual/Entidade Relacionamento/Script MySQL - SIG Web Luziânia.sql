
CREATE TABLE perfil (
                id_perfil INT AUTO_INCREMENT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(255),
                PRIMARY KEY (id_perfil)
);


CREATE TABLE tipo_lazer (
                id_tipo_lazer INT AUTO_INCREMENT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(255),
                PRIMARY KEY (id_tipo_lazer)
);


CREATE TABLE usuario (
                id_usuario INT AUTO_INCREMENT NOT NULL,
                perfil_id INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                login VARCHAR(50) NOT NULL,
                senha VARCHAR(255) NOT NULL,
                area VARCHAR(50),
                PRIMARY KEY (id_usuario)
);


CREATE TABLE avaliacao (
                id_avaliacao INT AUTO_INCREMENT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(255),
                PRIMARY KEY (id_avaliacao)
);


CREATE TABLE tipo_seguranca (
                id_tipo_seguranca INT AUTO_INCREMENT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(255),
                PRIMARY KEY (id_tipo_seguranca)
);


CREATE TABLE especialidade (
                id_especialidade INT AUTO_INCREMENT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(255),
                PRIMARY KEY (id_especialidade)
);


CREATE TABLE tipo_saude (
                id_tipo_saude INT AUTO_INCREMENT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(255),
                PRIMARY KEY (id_tipo_saude)
);


CREATE TABLE cidade (
                id_cidade INT AUTO_INCREMENT NOT NULL,
                id_ibge INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                estado VARCHAR(30) NOT NULL,
                regiao VARCHAR(30) NOT NULL,
                populacao INT NOT NULL,
                densidade_demografica DECIMAL(6,2) NOT NULL,
                area_territorial DECIMAL(8,3) NOT NULL,
                gentilico VARCHAR(30) NOT NULL,
                pib DECIMAL(7,2) NOT NULL,
                idhm DECIMAL(4,3) NOT NULL,
                data_fundacao DATE NOT NULL,
                PRIMARY KEY (id_cidade)
);


CREATE TABLE educacao (
                id_educacao INT AUTO_INCREMENT NOT NULL,
                cidade_id INT NOT NULL,
                id_mec INT,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                gestor VARCHAR(100),
                zona VARCHAR(50) NOT NULL,
                dependencia_administrativa VARCHAR(50) NOT NULL,
                latitude DECIMAL NOT NULL,
                longitude DECIMAL NOT NULL,
                PRIMARY KEY (id_educacao)
);


CREATE TABLE educacao_avaliacao (
                id_educacao_avaliacao INT AUTO_INCREMENT NOT NULL,
                educacao_id INT NOT NULL,
                avaliacao_id INT NOT NULL,
                nota DECIMAL,
                ano INT NOT NULL,
                PRIMARY KEY (id_educacao_avaliacao)
);


CREATE TABLE lazer (
                id_lazer INT AUTO_INCREMENT NOT NULL,
                cidade_id INT NOT NULL,
                tipo_lazer_id INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                latitude DECIMAL NOT NULL,
                longitude DECIMAL NOT NULL,
                PRIMARY KEY (id_lazer)
);


CREATE TABLE seguranca (
                id_seguranca INT AUTO_INCREMENT NOT NULL,
                cidade_id INT NOT NULL,
                tipo_seguranca_id INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                latitude DECIMAL NOT NULL,
                longitude DECIMAL NOT NULL,
                PRIMARY KEY (id_seguranca)
);


CREATE TABLE saude (
                id_saude INT AUTO_INCREMENT NOT NULL,
                cidade_id INT NOT NULL,
                tipo_saude_id INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                latitude DECIMAL NOT NULL,
                longitude DECIMAL NOT NULL,
                PRIMARY KEY (id_saude)
);


CREATE TABLE saude_especialidade (
                id_saude_especialidade INT AUTO_INCREMENT NOT NULL,
                saude_id INT NOT NULL,
                especialidade_id INT NOT NULL,
                PRIMARY KEY (id_saude_especialidade)
);


ALTER TABLE usuario ADD CONSTRAINT fk_perfil_usuario
FOREIGN KEY (perfil_id)
REFERENCES perfil (id_perfil)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE lazer ADD CONSTRAINT fk_tipo_lazer_lazer
FOREIGN KEY (tipo_lazer_id)
REFERENCES tipo_lazer (id_tipo_lazer)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE educacao_avaliacao ADD CONSTRAINT fk_avaliacao_educacao_avaliacao
FOREIGN KEY (avaliacao_id)
REFERENCES avaliacao (id_avaliacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE seguranca ADD CONSTRAINT fk_tipo_seguranca_seguranca
FOREIGN KEY (tipo_seguranca_id)
REFERENCES tipo_seguranca (id_tipo_seguranca)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE saude_especialidade ADD CONSTRAINT fk_especialidade_saude_especialidade
FOREIGN KEY (especialidade_id)
REFERENCES especialidade (id_especialidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE saude ADD CONSTRAINT fk_tipo_saude_saude
FOREIGN KEY (tipo_saude_id)
REFERENCES tipo_saude (id_tipo_saude)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE saude ADD CONSTRAINT fk_cidade_saude
FOREIGN KEY (cidade_id)
REFERENCES cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE seguranca ADD CONSTRAINT fk_cidade_seguranca
FOREIGN KEY (cidade_id)
REFERENCES cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE lazer ADD CONSTRAINT fk_cidade_lazer
FOREIGN KEY (cidade_id)
REFERENCES cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE educacao ADD CONSTRAINT fk_cidade_educacao
FOREIGN KEY (cidade_id)
REFERENCES cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE educacao_avaliacao ADD CONSTRAINT fk_educacao_educacao_avaliacao
FOREIGN KEY (educacao_id)
REFERENCES educacao (id_educacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE saude_especialidade ADD CONSTRAINT fk_saude_saude_especialidade
FOREIGN KEY (saude_id)
REFERENCES saude (id_saude)
ON DELETE NO ACTION
ON UPDATE NO ACTION;