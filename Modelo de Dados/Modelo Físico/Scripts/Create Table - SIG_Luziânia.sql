CREATE SEQUENCE public.perfil_id_perfil_seq;

CREATE TABLE public.perfil (
                id_perfil INTEGER NOT NULL DEFAULT nextval('public.perfil_id_perfil_seq'),
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR,
                CONSTRAINT pk_perfil PRIMARY KEY (id_perfil)
);


ALTER SEQUENCE public.perfil_id_perfil_seq OWNED BY public.perfil.id_perfil;

CREATE SEQUENCE public.tipo_lazer_id_tipo_lazer_seq;

CREATE TABLE public.tipo_lazer (
                id_tipo_lazer INTEGER NOT NULL DEFAULT nextval('public.tipo_lazer_id_tipo_lazer_seq'),
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR,
                CONSTRAINT pk_tipo_lazer PRIMARY KEY (id_tipo_lazer)
);


ALTER SEQUENCE public.tipo_lazer_id_tipo_lazer_seq OWNED BY public.tipo_lazer.id_tipo_lazer;

CREATE SEQUENCE public.usuario_id_usuario_seq;

CREATE TABLE public.usuario (
                id_usuario INTEGER NOT NULL DEFAULT nextval('public.usuario_id_usuario_seq'),
                perfil_id INTEGER NOT NULL,
                nome VARCHAR(100) NOT NULL,
                login VARCHAR(50) NOT NULL,
                senha VARCHAR NOT NULL,
                area VARCHAR(50),
                CONSTRAINT pk_usuario PRIMARY KEY (id_usuario)
);


ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;

CREATE SEQUENCE public.avaliacao_id_avaliacao_seq;

CREATE TABLE public.avaliacao (
                id_avaliacao INTEGER NOT NULL DEFAULT nextval('public.avaliacao_id_avaliacao_seq'),
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR,
                CONSTRAINT pk_avaliacao PRIMARY KEY (id_avaliacao)
);


ALTER SEQUENCE public.avaliacao_id_avaliacao_seq OWNED BY public.avaliacao.id_avaliacao;

CREATE SEQUENCE public.tipo_seguranca_id_tipo_seguranca_seq;

CREATE TABLE public.tipo_seguranca (
                id_tipo_seguranca INTEGER NOT NULL DEFAULT nextval('public.tipo_seguranca_id_tipo_seguranca_seq'),
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR,
                CONSTRAINT pk_tipo_seguranca PRIMARY KEY (id_tipo_seguranca)
);


ALTER SEQUENCE public.tipo_seguranca_id_tipo_seguranca_seq OWNED BY public.tipo_seguranca.id_tipo_seguranca;

CREATE SEQUENCE public.especialidade_id_especialidade_seq;

CREATE TABLE public.especialidade (
                id_especialidade INTEGER NOT NULL DEFAULT nextval('public.especialidade_id_especialidade_seq'),
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR,
                CONSTRAINT pk_especialidade PRIMARY KEY (id_especialidade)
);


ALTER SEQUENCE public.especialidade_id_especialidade_seq OWNED BY public.especialidade.id_especialidade;

CREATE SEQUENCE public.tipo_saude_id_tipo_saude_seq;

CREATE TABLE public.tipo_saude (
                id_tipo_saude INTEGER NOT NULL DEFAULT nextval('public.tipo_saude_id_tipo_saude_seq'),
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR,
                CONSTRAINT pk_tipo_saude PRIMARY KEY (id_tipo_saude)
);


ALTER SEQUENCE public.tipo_saude_id_tipo_saude_seq OWNED BY public.tipo_saude.id_tipo_saude;

CREATE SEQUENCE public.cidade_id_cidade_seq;

CREATE TABLE public.cidade (
                id_cidade INTEGER NOT NULL DEFAULT nextval('public.cidade_id_cidade_seq'),
                id_ibge INTEGER NOT NULL,
                nome VARCHAR(100) NOT NULL,
                estado VARCHAR(30) NOT NULL,
                regiao VARCHAR(30) NOT NULL,
                populacao INTEGER NOT NULL,
                densidade_demografica NUMERIC(6,2) NOT NULL,
                area_territorial NUMERIC(8,3) NOT NULL,
                gentilico VARCHAR(30) NOT NULL,
                pib NUMERIC(7,2) NOT NULL,
                idhm NUMERIC(4,3) NOT NULL,
                data_fundacao DATE NOT NULL,
                CONSTRAINT pk_id_cidade PRIMARY KEY (id_cidade)
);


ALTER SEQUENCE public.cidade_id_cidade_seq OWNED BY public.cidade.id_cidade;

CREATE SEQUENCE public.educacao_id_educacao_seq;

CREATE TABLE public.educacao (
                id_educacao INTEGER NOT NULL DEFAULT nextval('public.educacao_id_educacao_seq'),
                cidade_id INTEGER NOT NULL,
                id_mec INTEGER,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                gestor VARCHAR(100),
                zona VARCHAR(50) NOT NULL,
                dependencia_administrativa VARCHAR(50) NOT NULL,
                latitude NUMERIC NOT NULL,
                longitude NUMERIC NOT NULL,
                CONSTRAINT pk_educacao PRIMARY KEY (id_educacao)
);


ALTER SEQUENCE public.educacao_id_educacao_seq OWNED BY public.educacao.id_educacao;

CREATE SEQUENCE public.educacao_avaliacao_id_educacao_avaliacao_seq;

CREATE TABLE public.educacao_avaliacao (
                id_educacao_avaliacao INTEGER NOT NULL DEFAULT nextval('public.educacao_avaliacao_id_educacao_avaliacao_seq'),
                educacao_id INTEGER NOT NULL,
                avaliacao_id INTEGER NOT NULL,
                nota NUMERIC,
                ano INTEGER NOT NULL,
                CONSTRAINT pk_educacao_avaliacao PRIMARY KEY (id_educacao_avaliacao)
);


ALTER SEQUENCE public.educacao_avaliacao_id_educacao_avaliacao_seq OWNED BY public.educacao_avaliacao.id_educacao_avaliacao;

CREATE SEQUENCE public.lazer_id_lazer_seq;

CREATE TABLE public.lazer (
                id_lazer INTEGER NOT NULL DEFAULT nextval('public.lazer_id_lazer_seq'),
                cidade_id INTEGER NOT NULL,
                tipo_lazer_id INTEGER NOT NULL,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                latitude NUMERIC NOT NULL,
                longitude NUMERIC NOT NULL,
                CONSTRAINT pk_lazer PRIMARY KEY (id_lazer)
);


ALTER SEQUENCE public.lazer_id_lazer_seq OWNED BY public.lazer.id_lazer;

CREATE SEQUENCE public.seguranca_id_seguranca_seq;

CREATE TABLE public.seguranca (
                id_seguranca INTEGER NOT NULL DEFAULT nextval('public.seguranca_id_seguranca_seq'),
                cidade_id INTEGER NOT NULL,
                tipo_seguranca_id INTEGER NOT NULL,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                latitude NUMERIC NOT NULL,
                longitude NUMERIC NOT NULL,
                CONSTRAINT pk_seguranca PRIMARY KEY (id_seguranca)
);


ALTER SEQUENCE public.seguranca_id_seguranca_seq OWNED BY public.seguranca.id_seguranca;

CREATE SEQUENCE public.saude_id_saude_seq;

CREATE TABLE public.saude (
                id_saude INTEGER NOT NULL DEFAULT nextval('public.saude_id_saude_seq'),
                cidade_id INTEGER NOT NULL,
                tipo_saude_id INTEGER NOT NULL,
                nome VARCHAR(100) NOT NULL,
                endereco VARCHAR(200) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                cep VARCHAR(10),
                telefone VARCHAR(20),
                latitude NUMERIC NOT NULL,
                longitude NUMERIC NOT NULL,
                CONSTRAINT pk_saude PRIMARY KEY (id_saude)
);


ALTER SEQUENCE public.saude_id_saude_seq OWNED BY public.saude.id_saude;

CREATE SEQUENCE public.saude_especialidade_id_saude_especialidade_seq;

CREATE TABLE public.saude_especialidade (
                id_saude_especialidade INTEGER NOT NULL DEFAULT nextval('public.saude_especialidade_id_saude_especialidade_seq'),
                saude_id INTEGER NOT NULL,
                especialidade_id INTEGER NOT NULL,
                CONSTRAINT pk_saude_especialidade PRIMARY KEY (id_saude_especialidade)
);


ALTER SEQUENCE public.saude_especialidade_id_saude_especialidade_seq OWNED BY public.saude_especialidade.id_saude_especialidade;

ALTER TABLE public.usuario ADD CONSTRAINT fk_perfil_usuario
FOREIGN KEY (perfil_id)
REFERENCES public.perfil (id_perfil)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lazer ADD CONSTRAINT fk_tipo_lazer_lazer
FOREIGN KEY (tipo_lazer_id)
REFERENCES public.tipo_lazer (id_tipo_lazer)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.educacao_avaliacao ADD CONSTRAINT fk_avaliacao_educacao_avaliacao
FOREIGN KEY (avaliacao_id)
REFERENCES public.avaliacao (id_avaliacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.seguranca ADD CONSTRAINT fk_tipo_seguranca_seguranca
FOREIGN KEY (tipo_seguranca_id)
REFERENCES public.tipo_seguranca (id_tipo_seguranca)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.saude_especialidade ADD CONSTRAINT fk_especialidade_saude_especialidade
FOREIGN KEY (especialidade_id)
REFERENCES public.especialidade (id_especialidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.saude ADD CONSTRAINT fk_tipo_saude_saude
FOREIGN KEY (tipo_saude_id)
REFERENCES public.tipo_saude (id_tipo_saude)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.saude ADD CONSTRAINT fk_cidade_saude
FOREIGN KEY (cidade_id)
REFERENCES public.cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.seguranca ADD CONSTRAINT fk_cidade_seguranca
FOREIGN KEY (cidade_id)
REFERENCES public.cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lazer ADD CONSTRAINT fk_cidade_lazer
FOREIGN KEY (cidade_id)
REFERENCES public.cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.educacao ADD CONSTRAINT fk_cidade_educacao
FOREIGN KEY (cidade_id)
REFERENCES public.cidade (id_cidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.educacao_avaliacao ADD CONSTRAINT fk_educacao_educacao_avaliacao
FOREIGN KEY (educacao_id)
REFERENCES public.educacao (id_educacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.saude_especialidade ADD CONSTRAINT fk_saude_saude_especialidade
FOREIGN KEY (saude_id)
REFERENCES public.saude (id_saude)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;