/* ***************************** PERFIL ***************************** */

INSERT INTO perfil (nome, descricao) VALUES ('Administrador', 'Controle total no sistema');

/* ***************************** USUARIO ***************************** */

INSERT INTO usuario (nome, login, perfil_id, senha, area) VALUES ('Administrador','admin', 1, 'Administrador', 'Gerência Geral');

/* ***************************** CIDADE ***************************** */

INSERT INTO cidade(id_ibge, nome, estado, regiao, populacao, densidade_demografica, area_territorial, gentilico, pib, idhm, data_fundacao)
VALUES (5212501, 'Luziânia', 'Goiás', 'Centro-Oeste', 191139, 44.06, 3961.122, 'Luzianiense', 11927.38, 0.701, '1759-09-21');

/* ***************************** EDUCACAO ***************************** */

-- INSERT EXCEL
/* ="INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, "&A3&", '"&B3&"', '"&C3&"', '"&D3&"', '"&E3&"', '"&F3&"', '"&G3&"', '"&H3&"', '"&I3&"', "&J3&", "&K3&");" */

-- ESCOLAS MUNICIPAIS URBANAS

INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52121216, 'Centro Municipal de Educação Básica Professora Lydia Heringer Emerick (Casa da Criança I)', 'Rua João Gonçalves Quadra 83 Lote 12 a 13', 'Setor Fumal', '72801560', '6192697800', 'Lucineide Meireles', 'Urbana', 'Municipal', -16.263976, -47.955284);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52096866, 'Centro Municipal de Educação Básica Professora Aglaia Costa Lima (Casa da Criança II)', 'Rua 30 Quadra 27 Lote 10', 'Setor Mandú II', '72814690', '6185337853', 'Alessandra Maria', 'Urbana', 'Municipal', -16.247034, -47.927099);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'Centro Municipal de Educação Básica Estrela de Belém (Casa da Criança III)', 'Avenida Kisleu Dias Maciel Quadra 02 Lote 17 e 18', 'Parque Estrela Dalva II', NULL, '6136205317', 'Nilda da Fonseca', 'Urbana', 'Municipal', -16.248016, -47.910607);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52188523, 'Centro Municipal de Educação Básica Carlinda Rosa de Barros Machado', 'Rua 10, Quadra 02 Lote J', 'Parque Industrial Mingone', '72855002', '6136236644', 'Kelle Roriz de Lima Santos', 'Urbana', 'Municipal', -16.151429, -47.957016);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52096874, 'Centro Municipal de Educação Básica Manoel Fernandes Vieira', 'Rua 120 Quadra 340 ', 'Parque Estrela Dalva IX', '72804970', '6192537826', 'Cláudia Abernaz', 'Urbana', 'Municipal', -16.157364, -47.962697);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52086127, 'Centro Municipal de Educação Básica Jardim do Éden', 'Quadra 70 Lote 26 e 27', 'Parque Alvorada I', NULL, '6136200989', 'Margarete Lopes', 'Urbana', 'Municipal', -16.206994, -47.92478);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52095541, 'Escola Municipal Claudia Rosa Gomes Peixoto', 'Rua 13 Quadra 260 Lote 01 a 16', 'Parque Estrela Dalva IV', '72859400', '6136201099', 'Regina Célia', 'Urbana', 'Municipal', -16.258228, -47.90932);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52098230, 'Escola Municipal Débora Gomes de Azeredo', 'Rua Mococa Quadra 35 Lote 15 a 17', 'Jardim Zuleika', '72850635', '6136153542', 'Célia Maria', 'Urbana', 'Municipal', -16.133157, -47.964614);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52082415, 'Escola Municipal Dona Nenzica', 'Rua São Benedito Número 25', 'Centro', '72859400', '6136226094', 'Carla', 'Urbana', 'Municipal', -16.251891, -47.949987);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52088880, 'Escola Municipal Ivo Júlio Meireles', 'Avenida Gilberto Freire Quadra 190 a 203 Área Especial', 'Parque Estrela Dalva III', '72831170', '613603791', 'Michelle Pinheiro', 'Urbana', 'Municipal', -16.237472, -47.909585);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52097021, 'Escola Municipal Lourdes Salomão', 'Avenida Sara Kubitscheck Quadra 57 Lote 12 e 13 ', 'Parque JK', '72815450', '6191549952', 'Irenilda', 'Urbana', 'Municipal', -16.236958, -47.941909);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52083586, 'Escola Municipal Patrícia Prado Monteiro Seixo de Brito', 'Alameda Santa Maria', 'Setor Fumal', '72801770', '6136228483', 'Edineuza', 'Urbana', 'Municipal', -16.26757, -47.956996);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047156, 'Centro Municipal de Educação Básica Maria de Nondas (CAIC)', 'Rua Cristalina Quadra 18', 'Jofre Parada', NULL, '6136221359', 'Ana Lucia', 'Urbana', 'Municipal', -16.248989, -47.964278);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047822, 'Centro Municipal de Educação Básica Natália Aparecida Louzada Alves', 'Avenida 3 Praça III Área Especial ', 'Mingone III', NULL, '6136232476', 'Lucivânia Soares', 'Urbana', 'Municipal', -16.14578, -47.939621);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048829, 'Centro Municipal de Educação Básica Professor Joaquim Gilberto', 'Rua 1º de Julho Área Especial', 'Jardim Ingá', NULL, '6136233347', 'Cintia Lemos', 'Urbana', 'Municipal', -16.144874, -47.955109);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52094090, 'Centro Municipal de Educação Básica Professora Ana Reis Meireles (Dona Tizinha)', 'Avenida Ézio Carneiro Número 275 Quadra 11 Lote 16', 'Setor Aeroporto', '72801060', '6136227965', 'Cristina Salatiel', 'Urbana', 'Municipal', -16.258843, -47.958662);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048527, 'Escola Municipal Dom Agostinho', 'Rua Santo Antônio, Área Especial', 'Parque Cruzeiro do Sul', NULL, '6136238045', 'Nailza Ribeiro Turibio Pessoa', 'Urbana', 'Municipal', -16.139687, -47.935972);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52092020, 'Escola Municipal Eleuza Aparecida de Paiva Neto', 'Avenida Lucena Roriz Quadra 256', 'Parque Estrela Dalva IX', NULL, '6136233012', 'Leila', 'Urbana', 'Municipal', -16.155793, -47.957902);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047768, 'Escola Municipal Dona Nina', 'Rua 05 Área Especial', 'Jardim Planalto', NULL, '6136152055', 'Vilma', 'Urbana', 'Municipal', -16.130507, -47.949306);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048853, 'Escola Municipal Osfaya', 'Alameda Osfaya Área Especial', 'Cidade Osfaya', NULL, '6136203211', 'Andréia Alves de Lima', 'Urbana', 'Municipal', -16.172303, -47.921489);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048349, 'Escola Municipal Parque Sol Nascente Professora Ilka Meireles de Matos', 'BR 040 Km 24 Rua 13', 'Parque Sol Nascente', NULL, '6136205379', 'Solange de Sousa', 'Urbana', 'Municipal', -16.180165, -47.935748);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048519, 'Escola Municipal Professor Ismar Gonçalves', 'Rua 34 Quadra 28 Área Especial', 'Setor Mandú II', NULL, '6136226706', 'Ivaneide Pinheiro', 'Urbana', 'Municipal', -16.246609, -47.926384);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048381, 'Escola Municipal Santa Fé', 'Quadra 39 Área Especial', 'Parque Santa Fé', NULL, '6136201837', 'Márcia Cristina', 'Urbana', 'Municipal', -16.220856, -47.917109);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52069087, 'Escola Municipal Setor Norte Maravilha Professsor Belim', 'Avenida Doutor Paulino Lobo Filho Área Especial', 'Setor Norte Maravilha', '72812690', '6136225024', 'Solange Vieira', 'Urbana', 'Municipal', -16.240931, -47.959138);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52069940, 'Escola Municipal de Educação Especial Eugênia Campos Coelho', 'Rodovia Luziânia Braluz Km 03 Fazenda Contendas', 'Setor Fumal', '72859400', '6136221361', 'Divanir Maria', 'Urbana', 'Municipal', -16.285021, -47.959668);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047610, 'Escola Municipal André Rochais', 'Avenida Sarah Kubitscheck', 'Setor Serrinha', NULL, '6136224023', 'Edmaura', 'Urbana', 'Municipal', -16.240167, -47.943069);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047709, 'Escola Municipal Francisco Vieira Lins Naldo', 'Rua 22 Quadra 269 Área Especial', 'Parque Estrela Dalva IV', '72821210', '6136204241', 'Cleude', 'Urbana', 'Municipal', -16.259933, -47.912762);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047709, 'Escola Municipal Francisco Vieira Lins Naldo - Anexo', 'Rua 22 Quadra 269 Área Especial', 'Parque Estrela Dalva IV', '72821210', '6136200482', 'Cleude', 'Urbana', 'Municipal', -16.260238, -47.913458);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047750, 'Escola Municipal Dalva VII Professora Geralda Divina Lopes Neto', 'Rua 03 Quadra 18 Lote 23 a 29', 'Parque Estrela Dalva VII', NULL, '6136202382', 'Maria Nilva', 'Urbana', 'Municipal', -16.245606, -47.916119);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047717, 'Escola Municipal Dona Geni da Costa Afonso', 'Avenida Lucena Roriz Quadra 256', 'Parque Estrela Dalva IX', NULL, '6136230105', 'Maria Célia', 'Urbana', 'Municipal', -16.155739, -47.957933);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52095576, 'Escola Municipal Dilma Roriz Medeiros', 'Avenida do Trabalhador Gleba', 'Parque Estrela Dalva III', NULL, '6136206315', 'Maria Zélia', 'Urbana', 'Municipal', -16.234632, -47.892892);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047890, 'Escola Municipal Dom Bosco', 'Quadra 101 Número 04 Área Especial', 'Parque Alvorada I', NULL, '6136205728', 'Ada Luzia', 'Urbana', 'Municipal', -16.211053, -47929035);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52098249, 'Escola Municipal Jardim Flamboyant Alzira Elvira Xavier', 'Rua Planalto Quadra 02 Lote 12 a 17', 'Jardim Flamboyant', '72852510', '6136153550', 'Sueli Moreira', 'Urbana', 'Municipal', -16.11629, -47.965428);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52075141, 'Escola Municipal Kelly Susan Santos', 'Rua 33 Quadra 132', 'Mingone II', NULL, '6136234649', 'Eliane Marla', 'Urbana', 'Municipal', -16.145509, -47.939463);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047784, 'Escola Municipal Kennedy Professora Maria Clarice Meireles de Queiroz', 'Rua Bahia Área Especial', 'Setor Viegas', '72810560', '6136221588', 'Cacilda', 'Urbana', 'Municipal', -16.244218, -47.955758);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52070557, 'Escola Municipal Mingone I Alda Vieira de Souza', 'Rua 10 Quadra 02', 'Parque São José Mingone I', NULL, '6136233543', 'Sheyla Regina', 'Urbana', 'Municipal', -16.158438, -47.937575);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047814, 'Escola Municipal Palhoça Professora Edinir Celeste Roriz Lima', 'Rua Maria Helena Cardoso Área Especial', 'Parque Estrela Dalva III', NULL, '6136202160', 'Kelly Cristina', 'Urbana', 'Municipal', -16.245557, -47.90279);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52070573, 'Escola Municipal Professora Eva Marra Rocha', 'Rua Pompéia Quadra 33', 'Parque Zuleika Ipê', NULL, '6136153707', 'Marlene', 'Urbana', 'Municipal', -16.131887, -47.968733);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048586, 'Escola Municipal Professor Sebastião de Araújo Machado', 'Rua José de Melo', 'Centro', NULL, '6136226923', 'Vânia', 'Urbana', 'Municipal', -16.259021, -47.949936);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52088871, 'Escola Municipal Ramiro Aguiar', 'Rua 54 Quadra 103 Lote 15 a 32', 'Parque Estrela Dalva VIII', NULL, '6136202960', 'Helenice Teixeira', 'Urbana', 'Municipal', -16.266609, -47.909907);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52088740, 'Escola São Mateus', 'Rua Doutor Kisleu Dias Maciel Número 452', 'Rosário', NULL, '6136224794', 'Débora Abud', 'Urbana', 'Municipal', -16.246282, -47.949836);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047679, 'Escola Municipal Carlos Alberto Brandão Ferreira (Padre Teto)', 'Rua Elíseo de Melo Área Especial', 'Setor Fumal', NULL, '6136226921', 'Glaucilene Daparecida', 'Urbana', 'Municipal', -16.267484, -47.954799);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048373, 'Escola Municipal Professora Joana Darc Maciel de Leles', 'Rua Gonçalves Dias Área Especial', 'Setor Leste', NULL, '6136227125', 'Maria Aparecida', 'Urbana', 'Municipal', -16.252608, -47.930748);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048896, 'Escola Municipal Silas Santos Júnior', 'Quadra 33 Lote 7 a 10 Área Especial', 'Vila Guará', NULL, '6136201531', 'Cleusa Aparecida', 'Urbana', 'Municipal', -16.223891, -47.913223);

-- ESCOLAS ESTADUAIS URBANAS

INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047210, 'Colégio Estadual Professor Antônio Valdir Roriz', 'Praça Nirson Carneiro Lobo Número 01', 'Centro', '72800450', '6136222470', 'Patricia Pereira Novais da Silva', 'Urbana', 'Estadual', -16.255003, -47.95686);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047431, 'Colégio Estadual Alceu de Araújo Roriz', 'Rua Doutor João Teixeira', 'Centro', '72800440', '6136211364', 'Eliane Marcia de Mendança Lima', 'Urbana', 'Estadual', -16.253925, -47.957867);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047270, 'Colégio Estadual Professor Antônio Marco de Araújo', 'Rua Santiago Dantas Área Especial 148', 'Parque Estrela Dalva II', NULL, '6136203583', 'Porfíria Maria Braz', 'Urbana', 'Estadual', -16.251226, -47.910024);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047458, 'Colégio Estadual Cônego Ramiro', 'Rua João Braz', 'Centro', '72800080', '6136211365', 'Suzy Jorge dos Santos', 'Urbana', 'Estadual', -16.255036, -47.954139);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047474, 'Colégio Estadual Epaminondas Roriz', 'Rua Coronel Antônio Carneiro Número 321', 'Centro', NULL, '6136220366', 'Francisca Margareth da Silva', 'Urbana', 'Estadual', -16.256006, -47.95104);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047520, 'Colégio Estadual Professor Josué Meireles', 'Praça Evangelino Meireles Número 234', 'Centro', '72800680', '6136211203', 'Anita Luisa da Silva', 'Urbana', 'Estadual', -16.252131, -47.95021);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048730, 'Colégio Estadual Mingone I', 'Rua 09 Quadra 31 Lote A', 'Mingone I', NULL, '6136238069', 'Célia Cristina Martins de Lima', 'Urbana', 'Estadual', -16.158438, -47.937575);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52116409, 'Colégio Estadual Maria Abadia Salomão', 'Rua JK Quadra 01 Lote 24', 'Setor Kennedy', '728010600', '6136226095', 'Maria Faria de Deus Albernaz', 'Urbana', 'Estadual', -16.246451, -47.961244);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52069095, 'Colégio Estadual Helena Luzia Rodrigues de Queiroz', 'Rua 05 Quadra 44 Lote 20', 'Jardim Planalto', '72851635', '6136152055', 'Adilson Nunes da Rocha', 'Urbana', 'Estadual', -16.13044, -47.94925);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52076857, 'Colégio Estadual Osfaya', 'Alameda Osfaya Área Especial', 'Cidade Osfaya', '72855647', '6136204059', 'Maria Felinta Lustosa', 'Urbana', 'Estadual', -16.172367, -47.921403);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52076822, 'Colégio Estadual Francisco Machado de Araújo (CEJA)', 'Alameda Santa Maria Área Especial 01 a 04', 'Setor Aeroporto', NULL, '6136226507', 'Wellington Ferraz de Morais', 'Urbana', 'Estadual', -16.25872, -47.958701);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047318, 'Colégio Estadual Professora Maria Pereira de Vasconcelos', 'Rua 92 Quadra 256 Lote A', 'Parque Estrela Dalva IX', NULL, '6136232788', 'Emerson Araújo Melo', 'Urbana', 'Estadual', -16.155442, -47.958527);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52076830, 'Colégio Estadual Vasco dos Reis Gonçalves', 'Rua Senador Pinheiro Machado Quadra 22 Área Especial', 'Jardim Ingá', NULL, '6136234704', 'Elisangela de Souza', 'Urbana', 'Estadual', -16.142437, -47.951469);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047504, 'Colégio Estadual Padre Dario de Romedis', 'Avenida Doutor Neilor Rolim Quadra 27 Lote 17 a 19', 'Centro', NULL, '6136234704', 'Katia Aparecida Soares', 'Urbana', 'Estadual', -16.207665, -47.926342);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52082458, 'Colégio Estadual Éster da Cunha Peres', '5ª Avenida Quadra 56 Lote 1 a 20', 'Vila Guará', NULL, '6136202825', 'Maria da Conceição Lemos Oliveira', 'Urbana', 'Estadual', -16.229753, -47.910237);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047547, 'Colégio Estadual Professora Lourdes de Oliveira Sampaio', 'Avenida Miguel Real Quadra 71 Lote 01 a 09 e 20 a 26', 'Parque Estrela Dalva', '7280419', '6136227337', 'Nei Lopes de Oliveira', 'Urbana', 'Estadual', -16.251321, -47.925626);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52082474, 'Colégio Estadual Coração de Maria', 'Avenida Lucena Roriz Quadra 256 Lote 13 a 15', 'Parque Estrela Dalva IX', '72850010', '6136230105', 'Marcilene da Silva Leite', 'Urbana', 'Estadual', -16.155349, -47.958498);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52090930, 'Centro de Educação de Jovens e Adultos Gelmires Reis (CEJA)', 'Rua Gonçalves Dias Área Especial', 'Parque Estrela Dalva I', '72804070', '6136226401', 'Maria José de Sousa', 'Urbana', 'Estadual', -16.252608, -47.93073);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52092186, 'Colégio Estadual Dona Torinha', 'Rua Abílio Rodrigues Quadra 19 a 20', 'Setor Viegas II', NULL, '6136224615', 'Iolanda de Oliveira Leles', 'Urbana', 'Estadual', -16.252269, -47.959855);

-- ESCOLAS PARTICULARES

INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52095550, 'Colégio Campos do Saber', 'Avenida Lucena Roriz Quadra 02 Lote 18 ', 'Jardim Ingá', '72850010', '6136231387', 'Juliana Campos de Sousa', 'Urbana', 'Privada', -16.144897, -47.947133);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048659, 'Colégio Ceman', 'Rua 05 Quadra 26 Lote 02 a 07', 'Setor Mandú II', '72814540', '6136222770', 'Genice Ribeiro Felismino Burmester', 'Urbana', 'Privada', -16.248079, -47.925441);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047423, 'Escola Dinâmica', 'Rua José de Melo Número 226', 'Centro', '72800220', '6136212895', 'Valdereza Antonia Gonçalves Braz da Silva', 'Urbana', 'Privada', -16.255782, -47.94907);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52049159, 'Escola Nova Vida', 'Avenida Joaquim Gilberto', 'Setor Norte Maravilha', NULL, '6136212525', 'Fátima Cristina de Almeida Campos', 'Urbana', 'Privada', -16.247364, -47.952567);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047245, 'Colégio Santa Luzia', 'Rua Alvorada Quadra 01 Lote 11 a 14', 'Rosário', '72812040', '6136212456', 'Hermes Carneiro', 'Urbana', 'Privada', -16.251047, -47.946851);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52049086, 'Escola Ursinho Feliz', 'Rua Joaquim Gilberto Quadra 12 Lote 01 e 02', 'Jardim Ingá', NULL, '6136232921', 'Valéria Dias Severo Costa', 'Urbana', 'Privada', -16.138893, -47.953094);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52093719, 'Colégio Santa Terezinha', 'Avenida Bernado Sayão Quadra 12 Lote 13 e 14', 'Jardim Ingá', NULL, '6136232991', 'Valéria Dias Severo Costa', 'Urbana', 'Privada', -16.138749, -47.952934);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52091180, 'Escola Vovó Olivia', 'Rua Abílio Guimarães Quadra 2 Lote 23 ', 'Setor Kennedy', '72810510', '6136212303', 'Erta Aparecida Braz Guimarães', 'Urbana', 'Privada', -16.247045, -47.956977);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52047253, 'CVO Interativo', 'Rua Abílio Guimarães Quadra 2 Lote 23 ', 'Setor Kennedy', '72810510', '6136212303', 'Erta Aparecida Braz Guimarães', 'Urbana', 'Privada', -16.246704, -47.956635);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'Escola Aquarela', 'Rua Monção Quadra 78 Lote 10 a 13', 'Jardim Ingá', NULL, '6136237294', 'Denisa Malaquias Flores de Melo', 'Urbana', 'Privada', -16.146748, -47.956482);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'Escola a Casa do Saber', 'Rua Joaquim Nabuco Quadra 30 Lote 23', 'Parque Estrela Dalva I', NULL, '6132091051', 'Glaucia de Brito Araújo', 'Urbana', 'Privada', -16.253044, -47.919678);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'Escola Cantinho do Saber', 'Rua 202 Quadra 281 Lote 08', 'Parque Estrela Dalva IX', NULL, '6136236389', 'Erotildes Martins de Paiva e Silva', 'Urbana', 'Privada', -16.154220, -47.960486);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'Escola Castelo do Saber', 'Rua Cecília Meireles Quadra 100 Lote 12', 'Parque Estrela Dalva II', NULL, '6136204883', 'Gabrielle de Lira Mesquita', 'Urbana', 'Privada', -16.255505, -47.912192);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52094146, 'Escola Espírita Gilson de Mendonça Henriques', 'Rua 21 de Abril Quadra 05 Lote 13', 'Setor Norte', '72859400', '6136228749', NULL, 'Urbana', 'Privada', -16.232665, -47.945406);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52079759, 'Escola Gente Que Cresce', 'Rua 115 Quadra 83 Lote 05', 'Parque Estrela Dalva VIII', '72822030', '6136204584', NULL, 'Urbana', 'Privada', -16.266238, -47.915246);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52188515, 'Colégio Mário de Andrade', 'Rua Castro Moura Quadra 24 Lote 13', 'Jardim Ingá', '72850190', '6136230308', 'João Antônio Rodrigues da Silva', 'Urbana', 'Privada', -16.140750, -47.953402);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048780, 'Escola Memorial Eliene Campelo', 'Avenida Brasil Quadra 03 Lote 34', 'Setor Leste', '72803510', '6136224858', 'Eliane', 'Urbana', 'Privada', -16.257432, -47.940700);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'Colégio Mendonça de Oliveira', 'Rua Caçapava Quadra 10 Lote 02', 'Jardim Zuleika', NULL, '6136153361', 'Zenaide Chaves Mendes', 'Urbana', 'Privada', -16.129097, -47.963941);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52048900, 'Escola Nossa Senhora Aparecida', 'Rua João Paulo Quadra 25 Lote 02 e 03', 'Centro', '72800120', '6136214026', 'Patrícia Gonçalves de Morais', 'Urbana', 'Privada', -16.258003, -47.954810);

-- ESCOLA FEDERAL

INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 52096483, 'IFG - Instituto Federal de Educação, Ciência e Tecnologia de Goiás - Câmpus Luziânia', 'Rua São Bartolomeu', 'Vila Esperança', '72811580', '6136229700', 'José Carlos Barros Silva', 'Urbana', 'Federal', -16.243577, -47.961744);

-- ESCOLAS TÉCNICAS

INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'SENAC', 'Alameda Santa Maria Número 01 Área Especial', 'Setor Aeroporto', NULL, '6136221990', NULL, 'Urbana', 'Privada', -16.258172, -47.959053);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'SENAI', 'Rua Bahia Área Especial', 'Parque Viegas', NULL, NULL, NULL, 'Urbana', 'Privada', -16.244543, -47.955737);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, NULL, 'SEST SENAT', 'Quadra 03', 'Vera Cruz', NULL, '6136236730', NULL, 'Urbana', 'Privada', -16.162216, -47.933271);

-- UNIVERSIDADES

INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 491, 'UEG – Universidade Estadual de Goiás', 'Avenida do Trabalhador, Gleba B/4', 'Distrito Agroindustrial', NULL, '6136206315 ', 'Maria Eneida da Silva', 'Urbana', 'Estadual', -16.234724, -47.893079);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 658121, 'UNIDESC - Centro Universitário de Desenvolvimento do Centro-Oeste', 'BR 040 Km 16', 'Jardim Ingá', NULL, '6138783100', 'Luiz Pinto Fernandes', 'Urbana', 'Privada', -16.112362, -47.967838);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 22472, 'UNIDERP - Universidade Anhanguera', 'Rua José Melo', 'Centro', '72800620', '6136220563', 'Claudia de Sousa Lemos', 'Urbana', 'Privada', -16.259111, -47.949911);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 9737, 'UNIP - Universidade Paulista', 'Rua Doutor João Teixeira, Número 522, Salas 10/14', 'Centro', '72800440', '6130842825', NULL, 'Urbana', 'Privada', -16.250725, -47.954707);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 7065, 'UNOPAR - Universidade Norte do Paraná', 'Rua Alvorada, Quadra 1, Lote 11/14', 'Rosário', '72814040', '6136212456', NULL, 'Urbana', 'Privada', -16.251054, -47.946759);
INSERT INTO educacao (cidade_id, id_mec, nome, endereco, bairro, cep, telefone, gestor, zona, dependencia_administrativa, latitude, longitude)
VALUES (1, 23230, 'PUC Goiás - Pontifícia Universidade Católica de Goiás', 'Praça Nelson Carneiro Lobo (Colégio Estadual Antônio Valdir Roriz)', 'Centro', NULL, '6239461298', NULL, 'Urbana', 'Privada', -16.255038, -47.957044);

/* ***************************** AVALIACAO ***************************** */

INSERT INTO avaliacao (nome, descricao)
VALUES ('IDEB', 'O Índice de Desenvolvimento da Educação Básica (IDEB) é o principal indicador da qualidade da educação no Brasil. O IDEB é calculado com base no aprendizado dos alunos em português e matemática (Prova Brasil) e no fluxo escolar (taxa de aprovação)'); -- 1
INSERT INTO avaliacao (nome, descricao)
VALUES ('ENEM', 'O Exame Nacional do Ensino Médio (ENEM) tem como objetivo avaliar o desempenho do estudante ao fim da escolaridade básica. O ENEM é utilizado como critério de seleção para os estudantes que pretendem estudar em instituições de ensino pública (SISU), instituições particulares (ProUni) ou para retirada do certificado de conclusão do ensino médio'); -- 2

/* ***************************** EDUCACAO_AVALIACAO ***************************** */

-- IDEB (ANOS INICIAIS)

-- Centro Municipal de Educação Básica Maria de Nondas (CAIC)
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (13, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (13, 1, 4.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (13, 1, 5.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (13, 1, 5.6, 2013);

-- Centro Municipal de Educação Básica Natália Aparecida Louzada Alves
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (14, 1, 4.2, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (14, 1, 4.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (14, 1, 4.7, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (14, 1, 5.5, 2013);

-- Escola Municipal Dona Geni da Costa Afonso
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (30, 1, 3.9, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (30, 1, 3.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (30, 1, 5.3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (30, 1, 5.1, 2013);

-- Escola Municipal Kelly Susan Santos
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (34, 1, 3.8, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (34, 1, 3.8, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (34, 1, 4.6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (34, 1, 5.4, 2013);

-- Escola Municipal Professor Ismar Gonçalves
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (22, 1, 4.7, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (22, 1, 4.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (22, 1, 5.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (22, 1, 6.6, 2013);

-- Escola Municipal Setor Norte Maravilha Professsor Belim
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (24, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (24, 1, 3.6, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (24, 1, 4.9, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (24, 1, 5.2, 2013);

-- Escola Municipal André Rochais
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (26, 1, 4.1, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (26, 1, 3.9, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (26, 1, 4.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (26, 1, 4.7, 2013);

-- Escola Municipal Carlos Alberto Brandão Ferreira (Padre Teto)
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (42, 1, 3.7, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (42, 1, 4.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (42, 1, 5.3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (42, 1, 5.7, 2013);

-- Escola Municipal Dilma Roriz Medeiros
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (31, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (31, 1, 3.8, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (31, 1, 4.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (31, 1, 5.5, 2013);

-- Escola Municipal Dom Agostinho
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (17, 1, 3.5, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (17, 1, 4.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (17, 1, 4.3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (17, 1, 4.8, 2013);

-- Escola Municipal Dom Bosco
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (32, 1, 3.9, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (32, 1, 4.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (32, 1, 4.6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (32, 1, 6.2, 2013);

-- Escola Municipal Dona Nina
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (19, 1, 3.8, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (19, 1, 3.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (19, 1, 4.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (19, 1, 5.2, 2013);

-- Escola Municipal Eleuza Aparecida de Paiva Neto
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (18, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (18, 1, 4.6, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (18, 1, 4.9, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (18, 1, 5.8, 2013);

-- Escola Municipal Dalva VII Professora Geralda Divina Lopes Neto
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (29, 1, 3.5, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (29, 1, 3.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (29, 1, 4.9, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (29, 1, 4.8, 2013);

-- Escola Municipal Francisco Vieira Lins Naldo
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (27, 1, 4.3, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (27, 1, 3.9, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (27, 1, 5.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (27, 1, 5.6, 2013);

-- Escola Municipal Kennedy Professora Maria Clarice Meireles de Queiroz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (35, 1, 4, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (35, 1, 4.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (35, 1, 6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (35, 1, 6.9, 2013);

-- Escola Municipal Mingone I Alda Vieira de Souza
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (36, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (36, 1, 3.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (36, 1, 4.7, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (36, 1, 5.5, 2013);

-- Escola Municipal Osfaya
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (20, 1, 4.4, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (20, 1, 4.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (20, 1, 4.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (20, 1, 5.4, 2013);

-- Escola Municipal Palhoça Professora Edinir Celeste Roriz Lima
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (37, 1, 3.7, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (37, 1, 3.8, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (37, 1, 4.8, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (37, 1, 4.9, 2013);

-- Centro Municipal de Educação Básica Professor Joaquim Gilberto
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (15, 1, 4, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (15, 1, 4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (15, 1, 4.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (15, 1, 5.4, 2013);

-- Escola Municipal Professor Sebastião de Araújo Machado
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (39, 1, 3.4, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (39, 1, 4.2, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (39, 1, 6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (39, 1, 6, 2013);

-- Escola Municipal Professora Eva Marra Rocha
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (38, 1, 3.7, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (38, 1, 4.6, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (38, 1, 5.2, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (38, 1, 5.4, 2013);

-- Escola Municipal Professora Joana Darc Maciel de Leles
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (43, 1, 4.3, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (43, 1, 4.1, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (43, 1, 5.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (43, 1, 5.9, 2013);

-- Escola Municipal Ramiro Aguiar
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (40, 1, 4.3, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (40, 1, 4.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (40, 1, 5.3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (40, 1, 5.8, 2013);

-- Escola Municipal Santa Fé
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (23, 1, 3.8, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (23, 1, 3.5, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (23, 1, 4.6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (23, 1, 5.8, 2013);

-- Escola Municipal Silas Santos Júnior
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (44, 1, 4, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (44, 1, 4.1, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (44, 1, 5.2, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (44, 1, 5.7, 2013);

-- Escola Municipal Parque Sol Nascente Professora Ilka Meireles de Matos
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (21, 1, 4.3, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (21, 1, 4.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (21, 1, 5.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (21, 1, 5.4, 2013);

-- Escola São Mateus
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (41, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (41, 1, NULL, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (41, 1, 5.9, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (41, 1, 6.3, 2013);

-- IDEB (ANOS FINAIS)

-- Colégio Estadual Alceu de Araújo Roriz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (46, 1, 3.6, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (46, 1, 4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (46, 1, 4.2, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 1, 4.7, 2013);

-- Colégio Estadual Coração de Maria
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (61, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (61, 1, NULL, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (61, 1, 2.6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 1, 2.8, 2013);

-- Colégio Estadual Dona Torinha
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (63, 1, 3.8, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (63, 1, 4.8, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (63, 1, 5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 1, 5.4, 2013);

-- Colégio Estadual Epaminondas Roriz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (49, 1, 3.7, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (49, 1, 3.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (49, 1, 3.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 1, 4.7, 2013);

-- Colégio Estadual Francisco Machado de Araújo (CEJA)
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (55, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (55, 1, 3.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (55, 1, 3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (55, 1, 4.3, 2013);

-- Colégio Estadual Mingone I
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (51, 1, 3.7, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (51, 1, 3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (51, 1, 3.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 1, 3.7, 2013);

-- Colégio Estadual Osfaya
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (54, 1, 3.6, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (54, 1, 3.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (54, 1, 3.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 1, 4.3, 2013);

-- Colégio Estadual Padre Dario de Romedis
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (58, 1, 2.8, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (58, 1, 3.2, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (58, 1, 3.8, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 1, 4.9, 2013);

-- Colégio Estadual Professor Antônio Marco de Araújo
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (47, 1, 2.8, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (47, 1, 2.9, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (47, 1, 3.1, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 1, 3.8, 2013);

-- Colégio Estadual Professor Josué Meireles
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (50, 1, 2.9, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (50, 1, 3.1, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (50, 1, 3.9, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 1, 4.8, 2013);

-- Colégio Estadual Éster da Cunha Peres
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (59, 1, 2.4, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (59, 1, 3.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (59, 1, 3.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 1, 4.2, 2013);

-- Colégio Estadual Professora Lourdes de Oliveira Sampaio
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (60, 1, 3.2, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (60, 1, 3.7, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (60, 1, 3.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 1, 4, 2013);

-- Colégio Estadual Professora Maria Pereira de Vasconcelos
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (56, 1, 3.1, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (56, 1, 3.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (56, 1, 3.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 1, 3.6, 2013);

-- Colégio Estadual Vasco dos Reis Gonçalves
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (57, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (57, 1, 3.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (57, 1, 4.3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 1, 4.7, 2013);

-- Colégio Estadual Cônego Ramiro
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (48, 1, 4.9, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (48, 1, 4.4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (48, 1, 4.7, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 1, 5.4, 2013);

-- Colégio Estadual Helena Luzia Rodrigues de Queiroz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (53, 1, NULL, 2007);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (53, 1, 4, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano) 
VALUES (53, 1, 3.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 1, 4.5, 2013);

-- ENEM

-- Colégio Estadual Alceu de Araújo Roriz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 2, 406.8, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 2, NULL, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 2, NULL, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 2, 454.8, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (46, 2, NULL, 2014);

-- Colégio Estadual Cônego Ramiro
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 2, NULL, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 2, 522.4, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 2, 480.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 2, 461.26, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (48, 2, 462.132, 2014);

-- Colégio Estadual Coração de Maria
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 2, 427.94, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 2, 467.52, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 2, 437.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 2, 427.24, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (61, 2, NULL, 2014);

-- CVO Interativo
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (72, 2, 610.98, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (72, 2, 612.7, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (72, 2, 557.56, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (72, 2, 587.92, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (72, 2, 584.7, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (72, 2, 577.716, 2014);

-- IFG - Instituto Federal de Educação, Ciência e Tecnologia de Goiás - Câmpus Luziânia
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (83, 2, NULL, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (83, 2, NULL, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (83, 2, NULL, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (83, 2, 594.46, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (83, 2, 584.8, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (83, 2, 594.134, 2014);

-- Colégio Estadual Dona Torinha
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 2, 514.3, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 2, 502.9, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 2, 482.76, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 2, 467.66, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 2, 466.28, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (63, 2, 473.41, 2014);

-- Colégio Estadual Epaminondas Roriz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 2, 487.44, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 2, 509.72, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 2, 466.6, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 2, 472.58, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (49, 2, 464.846, 2014);

-- Colégio Estadual Helena Luzia Rodrigues de Queiroz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 2, NULL, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 2, NULL, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 2, 496.94, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 2, 458.84, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (53, 2, 432.212, 2014);

-- Colégio Estadual Maria Abadia Salomão
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (52, 2, 507.46, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (52, 2, 516.84, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (52, 2, 492.06, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (52, 2, 472.04, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (52, 2, 482.64, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (52, 2, 465.132, 2014);

-- Colégio Estadual Mingone I
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 2, 482.64, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 2, 476.66, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 2, 483.4, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 2, 436.4, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (51, 2, NULL, 2014);

-- Colégio Estadual Osfaya
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 2, 440.64, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 2, 504, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 2, 492.16, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 2, 442.34, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (54, 2, NULL, 2014);

-- Colégio Estadual Padre Dario de Romedis
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 2, 401.32, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 2, 530.24, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 2, 441.8, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 2, 451.24, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 2, 449.62, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (58, 2, 435.088, 2014);

-- Colégio Estadual Professor Antônio Marco de Araújo
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 2, 480.42, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 2, 471.12, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 2, 449.7, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 2, 451.42, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (47, 2, 449.512, 2014);

-- Colégio Estadual Professor Antônio Valdir Roriz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (45, 2, 484.52, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (45, 2, 493.26, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (45, 2, 475.5, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (45, 2, 464.32, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (45, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (45, 2, 460.324, 2014);

-- Colégio Estadual Professor Josué Meireles
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 2, 479.04, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 2, 406, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 2, 465.08, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 2, 422.46, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (50, 2, NULL, 2014);

-- Colégio Estadual Éster da Cunha Peres
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 2, 513.64, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 2, 490.12, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 2, 440.66, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 2, 443.48, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (59, 2, NULL, 2014);

-- Colégio Estadual Professora Lourdes de Oliveira Sampaio
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 2, 481.66, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 2, 519.3, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 2, 463.64, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 2, 476.08, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 2, 462.88, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (60, 2, 456.548, 2014);

-- Colégio Estadual Professora Maria Pereira de Vasconcelos
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 2, 473.48, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 2, 480.08, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 2, 475.68, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 2, 451.66, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (56, 2, NULL, 2014);

-- Colégio Santa Luzia
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (68, 2, 582.82, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (68, 2, 592.2, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (68, 2, 578.78, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (68, 2, 576.44, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (68, 2, 567.56, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (68, 2, 572.386, 2014);

-- Colégio Santa Terezinha
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (70, 2, NULL, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (70, 2, 494, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (70, 2, 526.82, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (70, 2, 506.02, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (70, 2, 484.02, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (70, 2, NULL, 2014);

-- Escola Ursinho Feliz
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (69, 2, 529.16, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (69, 2, NULL, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (69, 2, 469.3, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (69, 2, 477.9, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (69, 2, NULL, 2013);

-- Colégio Estadual Vasco dos Reis Gonçalves
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 2, 485.48, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 2, 509.28, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 2, 460.42, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 2, 464.08, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (57, 2, 463.118, 2014);

-- Escola Vovó Olivia
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (71, 2, 633.48, 2009);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (71, 2, 617.72, 2010);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (71, 2, 543.78, 2011);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (71, 2, 575.78, 2012);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (71, 2, NULL, 2013);
INSERT INTO educacao_avaliacao(educacao_id, avaliacao_id, nota, ano)
VALUES (71, 2, NULL, 2014);

/* ***************************** TIPO_LAZER ***************************** */

INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Praça', 'Espaço público urbano livre'); -- 1
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Centro Poliesportivo', 'Espaço público destinado a práticas esportivas'); -- 2
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Centro Comunitário', 'Espaço público destinado a eventos'); -- 3
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Teatro', 'Responsável por apresentações teatrais'); -- 4
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Shopping', 'Espaço destinado a lojas, lanchonetes, restaurantes, salas de cinema e playground'); -- 5
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Bar', 'Espaço destinado ao consumo de bebida alcoólica'); -- 6
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Bar/Restaurante', 'Espaço destinado ao consumo de bebida alcoólica e consumo de alimentos'); -- 7
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Pizzaria', 'Espaço destinado ao consumo de pizza e massas'); -- 8
INSERT INTO tipo_lazer (nome, descricao) 
VALUES ('Estádio', 'Local destinado a prática de jogos de futebol'); -- 9

/* ***************************** LAZER ***************************** */

-- INSERT EXCEL
/* ="INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, NULL, '"&A3&"', '"&B3&"', '"&C3&"', '"&D3&"', '"&E3&"', "&F3&", "&G3&");" */

INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 5, 'Luziânia Shopping', 'Rua Ophir José Braz', 'Centro', NULL, '6130844616', -16.255992, -47.955093);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 1, 'Praça de Santa Luzia', 'Avenida Jovêntino Rodrigues', 'Centro', NULL, NULL, -16.253046, -47.946739);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 1, 'Praça Três Bicas', 'Rua Benedito José de Morais', 'Centro', NULL, NULL, -16.25098, -47.952248);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 2, 'Ginásio de Esportes - Centro', 'Rua Doutor João Teixeira', 'Centro', NULL, NULL, -16.252982, -47.957845);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 4, 'Teatro Municipal Benedito de Araújo Melo', 'Rua 01', 'Centro', NULL, '6139063259', -16.252223, -47.958047);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 2, 'Centro Poliesportivo - Setor Kennedy', 'Rua Judéia', 'Setor Kennedy', NULL, NULL, -16.245562, -47.961967);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 9, 'Estádio Zequinha Roriz (Serra do Lago)', 'Rua 34 A', 'Parque JK', NULL, NULL, -16.246584, -47.941142);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 3, 'Centro de Convenções de Luziânia', 'Rua do Comércio', 'Centro', NULL, NULL, -16.254871, -47.95596);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 2, 'Ginásio de Esportes - Parque Estrela Dalva II', 'Avenida Kisleu Dias Macial', 'Parque Estrela Dalva II', NULL, NULL, -16.252241, -47.910405);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 3, 'Centro Comunitário Padre Bernado', 'Rua Doutor João Teixeira', 'Centro', NULL, NULL, -16.249778, -47.953736);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 8, 'Roda Pizza', 'Rua Jesus Meireles', 'Centro', NULL, '6136221017', -16.253172, -47.947839);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 8, 'Pizza Doro', 'Rua Benjamim Roriz, Quadra 18', 'Centro', '72800380', '6136225800', -16.256916, -47.956262);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 8, 'Verace Pizzaria', 'Rua José Franco Pimentel, Número 57', 'Centro', NULL, '6136224102', -16.256916, -47.956262);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 8, 'Pizza na Pedra', 'Rua Doutor João Teixeira, Quadra 67, Lote 18', 'Centro', '72800440', '6136212011', -16.256916, -47.956262);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 6, 'Chopperia dos Forgado', 'Rua Doutor João Teixeira', 'Centro', NULL, '6136012873', -16.253035, -47.956834);
INSERT INTO lazer (cidade_id, tipo_lazer_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 6, 'Antigamente na Lenha', 'Rua do Rosário, Número 517', 'Centro', NULL, '6136212509', -16.248404, -47.948136);

/* ***************************** TIPO_SAUDE ***************************** */

INSERT INTO tipo_saude (nome, descricao) 
VALUES ('Hospital Público', 'Responsável ao atendimento a doentes gratuitamente'); -- 1
INSERT INTO tipo_saude (nome, descricao) 
VALUES ('Hospital Particular', 'Responsável ao atendimento a doentes de maneira não gratuíta'); -- 2
INSERT INTO tipo_saude (nome, descricao) 
VALUES ('Clínica de Saúde', 'Responsável pelo tratamento de doenças'); -- 3
INSERT INTO tipo_saude (nome, descricao) 
VALUES ('CAIS', 'Unidade de atendimento especializada a usuários do SUS'); -- 4
INSERT INTO tipo_saude (nome, descricao) 
VALUES ('SAMU', 'Serviço de atendimento médico em caso de emergência'); -- 5

/* ***************************** SAUDE ***************************** */

-- INSERT EXCEL
/* ="INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, NULL, '"&A3&"', '"&B3&"', '"&C3&"', '"&D3&"', '"&E3&"', "&F3&", "&G3&");" */

INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 1, 'Hospital Regional de Luziânia - Doutor Eliel de Oliveira Almeida', 'Avenida Alfredo Nasser', 'Parque Estrela Dalva VII', NULL, '6139063148', -16.246619, -47.913344);
INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 1, 'Hospital Regional do Jardim Ingá - Antônio Joaquim de Melo', 'Avenida Doutor Israel Pinheiro Machado Área Especial', 'Jardim Ingá', NULL, '6139691049', -16.144055, -47.962111);
INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 4, 'CAIS - Centro de Atendimento Integral à Saúde - Doutor Wilson Cavalcante Coelho', 'Rua Isaac Gonçalves Área Especial', 'Setor Fumal', NULL, '6139063584', -16.265981, -47.955171);
INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 3, 'Clínica de Especialidades de Luziânia', 'Rua José de Melo Número 154', 'Centro', NULL, '6136063227', -16.254917, -47.949094);
INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 3, 'Clínica de Psicologia de Luziânia', 'Rua Aloísio Gonçalves Número 166', 'Centro', NULL, '6139063235', -16.255878, -47.953644);
INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 5, 'SAMU - Serviço de Atendimento Médico de Urgência', 'Rua Tristão Roriz', 'Centro', NULL, '6139063030', -16.25181, -47.955127);
INSERT INTO saude (cidade_id, tipo_saude_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, 2, 'Hospital Santa Luzia', 'Praça Raimundo de Araújo Melo Número 114', 'Centro', NULL, '6136221000', -16.251601, -47.951106);

/* ***************************** ESPECIALIDADE ***************************** */

INSERT INTO especialidade (nome, descricao) 
VALUES ('Ortopedia', 'Especialidade médica responsável por doenças relacionadas ao aparelho locomotor: deformidades dos ossos, músculos, ligamentos, articulações'); -- 1
INSERT INTO especialidade (nome, descricao) 
VALUES ('Clínica Médica', 'Especialidade médica responsável pelo primeiro diagnóstico do paciente'); -- 2
INSERT INTO especialidade (nome, descricao) 
VALUES ('Dermatologia', 'Especialidade médica responsável pelo tratamento da pele'); -- 3
INSERT INTO especialidade (nome, descricao) 
VALUES ('Infectologia', 'Especialidade médica responsável pelo tratamento de doenças causadas por vírus e bactérias'); -- 4
INSERT INTO especialidade (nome, descricao) 
VALUES ('Ginecologia', 'Especialidade médica responsável pela saúde do aparelho reprodutor feminino (vagina, útero e ovários) e mamas'); -- 5
INSERT INTO especialidade (nome, descricao) 
VALUES ('Tratamento de Hipertensos', 'Doença crónica determina por elevado níveis de pressão sanguínea nas artérias'); -- 6
INSERT INTO especialidade (nome, descricao) 
VALUES ('Tratamento de Diabéticos', 'Doença metabólica caracterizada por um aumento anormal de açucar ou glicose no sangue'); -- 7
INSERT INTO especialidade (nome, descricao) 
VALUES ('Tratamento de Tuberculose', 'Doença infecciosa pulmonar'); -- 8
INSERT INTO especialidade (nome, descricao) 
VALUES ('Tratamento de Hanseníase', 'Doença infecto-contagiosa presente na pele e nervos periféricos'); -- 9
INSERT INTO especialidade (nome, descricao) 
VALUES ('Fisioterapia', 'Especialidade médica responsável pelo tratamento e prevenção de lesões'); -- 10
INSERT INTO especialidade (nome, descricao) 
VALUES ('Odontologia', 'Especialidade médica responsável pelo tratamento da saúde bucal'); -- 11
INSERT INTO especialidade (nome, descricao) 
VALUES ('Exames Labatoriais', 'Exames realizados em laboratórios visando um diagnóstico'); -- 12
INSERT INTO especialidade (nome, descricao) 
VALUES ('Neurologia', 'Especialidade médica responsável pelo tratamento de doenças que afetam o sistema nervoso'); -- 13
INSERT INTO especialidade (nome, descricao) 
VALUES ('Vacinação', 'Imunização de doenças infecciosas'); -- 14
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cardiologia', 'Especialidade médica responsável pelo diagnóstico e tratamento de doenças relacionadas ao coração'); -- 15
INSERT INTO especialidade (nome, descricao) 
VALUES ('Obstetrícia', 'Especialidade médica que estuda a reprodução da mulher'); -- 16
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cirurgia Geral', 'Especialidade médica responsável por cirurgias abdominais, videolaparoscopias e cirurgia de traumas'); -- 17
INSERT INTO especialidade (nome, descricao) 
VALUES ('Pediatria', 'Especialidade médica responsável a diagnosticar doenças em crianças e adolescentes'); -- 18
INSERT INTO especialidade (nome, descricao) 
VALUES ('Radiologia', 'Especialidade médica responsável por realizar imagens do corpo humano via radiografia'); -- 19
INSERT INTO especialidade (nome, descricao) 
VALUES ('Nutrição', 'Especialidade médica responsável voltada a alimentação humana'); -- 20
INSERT INTO especialidade (nome, descricao) 
VALUES ('Angiologia', 'Especialidade médica responsável no tratamento de doenças que acometem vasos sanguíneos (artérias e veias) e vasos linfáticos'); -- 21
INSERT INTO especialidade (nome, descricao) 
VALUES ('Climatério', 'Transição fisiológica do periódo reprodutivo para o não reprodutivo na mulher'); -- 22
INSERT INTO especialidade (nome, descricao) 
VALUES ('Mastologia', 'Especialidade médica reponsável pelo tratamento de doenças nas mamas'); -- 23
INSERT INTO especialidade (nome, descricao) 
VALUES ('Oftamologia', 'Especialidade médica responsável pelo tratamento de doenças nos olhos'); -- 24
INSERT INTO especialidade (nome, descricao) 
VALUES ('Urologia', 'Especialidade médica responsável pelo tratamento urinário de homens e mulheres e do sistema reprodutor masculino'); -- 25
INSERT INTO especialidade (nome, descricao) 
VALUES ('Fonoaudiologia', 'Especialidade médica responsável pelo tratamento de funções neurovegetativas (mastigação, deglutição e respiração) e a comunicação humana'); -- 26
INSERT INTO especialidade (nome, descricao) 
VALUES ('Enfermagem', 'Especialidade médica responsável por assitenciar os pacientes'); -- 27
INSERT INTO especialidade (nome, descricao) 
VALUES ('Psicologia', 'Especialidade médica responsável pelo tratamento psicológico'); -- 28
INSERT INTO especialidade (nome, descricao) 
VALUES ('Reumatologia', 'Especialidade médica responsável que tratamento de doenças relacionadas aos tecidos conjuntivos: esclerose sistêmica, osteoartrite, osteoporose, entre outras'); -- 29
INSERT INTO especialidade (nome, descricao) 
VALUES ('Psiquiatria', 'Especialidade médica responsável pelo tratamento de doenças psiquicas como: depressão, dependências químicas e esquizofrenia'); -- 30
INSERT INTO especialidade (nome, descricao) 
VALUES ('Otorrinolaringologia', 'Especialidade médica responsável pelo tratamento de doenças do ouvido, do do nariz e seios paranasais, faringe e laringe'); -- 31
INSERT INTO especialidade (nome, descricao) 
VALUES ('Nefrologia', 'Especialidade médica responsável pelo tratamento de hemodiálise'); -- 32
INSERT INTO especialidade (nome, descricao) 
VALUES ('Oncologia', 'Especialidade médica responsável pelo tratamento de tumores malignos'); -- 33
INSERT INTO especialidade (nome, descricao) 
VALUES ('Gastroenterologia', 'Especialidade médica responsável pelo tratamento de doenças do aparelho digestivo'); -- 34
INSERT INTO especialidade (nome, descricao) 
VALUES ('Endocrinologia', 'Especialidade médica responsável pelo tratamento de pacientes com diabetes, doenças da tireóide e obesidade'); -- 35
INSERT INTO especialidade (nome, descricao) 
VALUES ('Anestesiologia', 'Especialidade médica responsável pela anestesia em procedimentos cirúrgicos'); -- 36
INSERT INTO especialidade (nome, descricao) 
VALUES ('Medicina do Trabalho', 'Especialidade médica responsável pela saúde do trabalhador'); -- 37
INSERT INTO especialidade (nome, descricao) 
VALUES ('UTI', 'Unidade de Terapia Intensiva'); -- 38
INSERT INTO especialidade (nome, descricao) 
VALUES ('Anatomia Patológica', 'Especialidade médica responsável por analisar células e/ou tecidos, em laboratório, para identificação de doenças e/ou tumores'); -- 39
INSERT INTO especialidade (nome, descricao) 
VALUES ('Bioquímica', 'Especialidade médica responsável pelo tratamento da estrutura e função metabólica de componentes celulares como proteínas, carboidratos, lipídios, ácidos nucléicos e outras biomoléculas'); -- 40
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cirurgia Vascular', 'Especialidade médica responsável por cirurgias vasculares'); -- 41
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cirurgia Plástica', 'Especialidade médica responsável por realizar lipoaspirações, implantes de próteses de silicone e aplicações de botox. E cirurgias reparadoras, especialmente em vítimas de queimaduras'); -- 42
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cirurgia Pediátrica', 'Especialidade médica responsável por cirurgias em crianças e adolescentes'); -- 43
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cirurgia Endovascular', 'Especialidade médica responsável por cirurgias no sistema circulatório a partir do interior dos vasos sanguíneos'); -- 44
INSERT INTO especialidade (nome, descricao) 
VALUES ('Cirurgia Cardíaca', 'Especialidade médica responsável por cirurgia no coração'); -- 45
INSERT INTO especialidade (nome, descricao) 
VALUES ('Primeiros Socorros', 'Especialidade médica responsável por realizar o primeiro atendimento em caso de acidente'); -- 46

/* ***************************** SAUDE_ESPECIALIDADE ***************************** */

INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 1);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 5);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 12);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 15);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 16);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 17);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 18);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 19);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (1, 27);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 1);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 2);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 5);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 12);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 18);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 20);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (2, 27);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 1);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 2);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 3);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 4);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 5);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 6);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 7);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 8);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 9);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 10);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 11);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 12);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 13);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 14);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (3, 27);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 5);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 13);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 15);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 18);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 20);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 21);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 22);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 23);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 24);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 25);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 26);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (4, 27);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (5, 28);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (5, 27);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (6, 46);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 1);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 2);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 3);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 5);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 10);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 12);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 13);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 15);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 16);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 17);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 18);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 19);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 20);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 23);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 24);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 25);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 28);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 29);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 30);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 31);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 32);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 33);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 34);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 35);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 36);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 37);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 38);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 39);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 40);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 41);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 42);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 43);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 44);
INSERT INTO saude_especialidade (saude_id, especialidade_id)
VALUES (7, 45);

/* ***************************** TIPO_SEGURANCA ***************************** */

INSERT INTO tipo_seguranca (nome, descricao) 
VALUES ('Delegacia', 'Responsável por registro de ocorrência e investigação criminal'); -- 1
INSERT INTO tipo_seguranca (nome, descricao) 
VALUES ('Presídio', 'Responsável por apreensão de infratores'); -- 2
INSERT INTO tipo_seguranca (nome, descricao) 
VALUES ('Justiça', 'Orgão público relacionado a justiça brasileira'); -- 3
INSERT INTO tipo_seguranca (nome, descricao) 
VALUES ('Batalhão', 'Unidade militar'); -- 4
INSERT INTO tipo_seguranca (nome, descricao) 
VALUES ('CIOPS', 'Responsável por integrar todos as operações de segurança'); -- 5
INSERT INTO tipo_seguranca (nome, descricao) 
VALUES ('Polícia Técnica Científica', 'Responsável por produzir prova pericial de crimes'); -- 6

/* ***************************** SEGURANCA ***************************** */

-- INSERT EXCEL
/* ="INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude)
VALUES (1, NULL, '"&A3&"', '"&B3&"', '"&C3&"', '"&D3&"', '"&E3&"', "&F3&", "&G3&");" */

INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 1, '5ª Delegacia Regional de Polícia Civíl', 'Rua Doutor Delgado Quadra 27 Lote 01', 'Setor Aeroporto', NULL, '6136222101', -16.253512, -47.961122);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 5, 'CIOPS - Centro Integrado de Operações de Segurança', 'BR 040', 'Parque Santa Fé', NULL, '6136201587', -16.223377, -47.914104);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 5, 'CIOPS - Centro Integrado de Operações de Segurança - Jardim Ingá', 'Rua Donas Guiomar Ribeiro', 'Jardim Ingá', NULL, NULL, -16.146423, -47.954481);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 4, '5º Comando Regional de Polícia Militar', 'Avenida Alfredo Nasser Quadra 155 Lote 01 a 12', 'Parque Estrela Dalva II', NULL, '6136227822', -16.246813, -47.911887);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 4, '5º Batalhão de Bombeiros Militar', 'Rua Joaquim Nabuco Quadra 49', 'Parque Estrela Dalva', NULL, '6136216267', -16.255144, -47.922492);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 1, 'DEAM -  Delegacia de Defesa da Mulher de Luziânia', 'Rua Florentino Chaves Número 175', 'Centro', NULL, '6136214490', -16.252967, -47.955195);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 6, '14ª Núcleo Regional Polícia Técnico Científica de Luziânia', 'Avenida Brasil', 'Setor Leste', NULL, '6136228743', -16.258364, -47.933226);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 2, 'CASE - Centro de Atendimento Socioeducativo', 'Rua Epaminondas Roriz', 'Setor Fumal', NULL, '6136225733', -16.267361, -47.950828);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 2, 'Presídio de Luziânia', 'Avenida Júlio Meireles Número 300', 'Setor Aeroporto', NULL, '6136221400', -16.25368, -47.960928);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 3, 'Fórum de Luziânia', 'Avenida Doutor Neilo Rolim', 'Parque JK', '72815450', '6136229400', -16.22777, -47.938164);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 3, 'Vara do Trabalho de Luziânia', 'Avenida Doutor Neilo Rolim', 'Parque JK', NULL, '6139065907', -16.22807, -47.939018);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 3, 'Promotoria de Justiça de Luziânia', 'Avenida Doutor Neilo Rolim', 'Parque JK', '72815450', '6136225819', -16.228504, -47.938645);
INSERT INTO seguranca (cidade_id, tipo_seguranca_id, nome, endereco, bairro, cep, telefone, latitude, longitude) 
VALUES (1, 3, 'Fórum Eleitoral de Luziânia', 'Avenida Doutor Neilo Rolim', 'Parque JK', '72815560', '6136225132', -16.226922, -47.938481);