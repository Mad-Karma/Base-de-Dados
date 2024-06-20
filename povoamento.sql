-- ------------------------------------------------------
-- ------------------------------------------------------
-- Universidade do Minho
-- Licenciatura em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 
-- Caso de Estudo: O Farol do Saber 
-- Povoamento inicial da base de dados
-- Maio/2023
-- ------------------------------------------------------
-- ------------------------------------------------------

--
-- Esquema: "Farol do Saber"
USE Farol_do_saber ;

--
-- Permissão para fazer operações de remoção de dados.
SET SQL_SAFE_UPDATES = 0;

--
-- Povoamento da tabela "Administrador"
INSERT INTO Administrador
    (id_utilizador, nome, numero_telefone, email)
    VALUES
		(1, 'Maria Caetana', '942287061','mcaetano@gmail.com'),
		(2,'António Esteves', '964238042','aesteves@gmail.com')
    ;
--
-- DELETE FROM Administrador;
-- SELECT * FROM Administrador;

--
-- Povoamento da tabela "Disciplina"
INSERT INTO Disciplina
    (id, turno, nome, dia_lecionado, hora_inicio, hora_termino)
    VALUES
		(1, 1, 'Matemática','Segunda_feira','14:00:00', '15:30:00'),
		(2, 2, 'Matemática','Terça-feira', '14:00:00', '15:30:00'),
        (3, 1, 'Inglês','Terça-feira','16:00:00', '17:30:00'),
        (4, 1, 'História','Quinta-feira','14:00:00', '15:30:00'),
        (5, 1, 'Geografia','Quinta-feira','16:00:00', '17:30:00'),
        (6, 1, 'Física','Quarta-feira','16:00:00', '17:30:00'),
        (7, 1, 'Química','Sexta-feira','14:00:00', '15:30:00'),
        (8, 1, 'Biologia','Quarta-feira','14:00:00', '15:30:00'),
        (9, 1, 'Português','Segunda-feira','16:00:00', '17:30:00'),
        (10, 2, 'Português','Sexta-feira','16:00:00', '17:30:00')
    ;
--
-- DELETE FROM Disciplina;
-- SELECT * FROM Disciplina;   

--
-- Povoamento da tabela "Aluno"
INSERT INTO Aluno
    (id, nome, endereco, data_nascimento, faltas, presencas_espectaveis, email, numero_telefone, ano_escolar, nif)
    VALUES
		(1, 'Ana Silva', 'Rua das Flores, nº100, Covilhã','2009-12-05', 0, 8, 'ana.silva@gmail.com', 912345678, 8, 362519478),                           
		(2, 'Bruno Santos', 'Rua dos Pinheiros, nº45, Covilhã','2010-02-22', 1, 12, 'bruno.santos@gmail.com', 923456789, 7, 891602437),
        (3, 'Carolina Oliveira', 'Avenida Central, nº20, Covilhã','2009-06-18', 0, 8, 'carol.oliveira@hotmail.com', 934567890, 8, 453287196),
        (4, 'Diogo Pereira', 'Rua do Mar, nº15, Covilhã','2010-09-12', 4, 12, 'diogo.pereira@gmail.com', 945678901, 7, 730819264),
        (5, 'Elena Rodrigues', 'Rua dos Lírios, nº30, Covilhã','2009-11-01', 3, 8, 'elena.rodrigues@hotmail.com', 956789012, 8, 142936587),
        (6, 'Francisco Alves', 'Rua das Figueriras, nº10, Covilhã','2008-04-09', 2, 8, 'francisco.alves@gmail.com', 967890123, 9, 629408175),
        (7, 'Gabriela Ferreira', 'Rua do Sol, nº5, Covilhã','2009-08-14', 1, 8, 'gabriela.ferreira@gmail.com', 978901234, 8, 216594083),
        (8, 'Henrique Costa','Avenida da Liberdade, nº50, Covilhã','2010-07-27', 2, 8, 'henrique.costa@hotmail.com', 989012345, 7, 947360821),
        (9, 'Inês Sousa','Rua dos Cravos, nº25, Covilhã','2008-01-10', 0, 12,'ines.sousa@gmail.com', 900123456, 9, 518249637),
        (10, 'João Martins','Rua da Praia, nº2, Covilhã','2009-05-03', 3, 4,'joao.martins"hotmail.com', 911234567, 8, 305728941),
        (11, 'Lara Oliviera','Rua das Palmeiras, nº12, Covilhã', '2008-10-22', 0, 12,'lara.oliveira@gmail.com', 922345678, 9, 802163945),
        (12, 'Miguel Ferreira','Rua do Campo, nº7, Covilhã','2009-03-14', 0, 4,'miguel.ferreira@hotmail.com', 933456789, 8, 675894231),
        (13, 'Nuno Silva','Avenida dos Aliados, nº30, Covilhã','2010-06-20', 0, 8,'nuno.silva@gmail.com', 944567890, 7, 438902761),
        (14, 'Olivia Santos','Rua das Violetas, nº8, Covilhã','2008-09-28', 0, 4,'olivia.santos@hotmail.com', 955678901, 9, 926814503),
        (15, 'Pedro Rodrigues','Rua das Rosas, nº25, Covilhã','2010-12-09', 0, 8,'pedro.rodrigues@gmail.com', 966789012, 7, 381695247),
        (16, 'Raquel Almeida','Avenida da Boavista, nº75, Covilhã','2009-02-17', 5, 12,'raquel.alemeida@hotmail.com', 977890123, 8, 574216309),
        (17, 'Sofia Santos','Rua do Comércio, nº40, Covilhã','2010-05-11', 0, 8,'sofia.santos@gmail.com', 988901234, 7, 203851764),
        (18, 'Tiago Oliveira','Rua dos Crisântemos, nº22, Covilhã','2008-08-08', 0, 4,'tiago.olvieira@hotmail.com', 999012345, 9, 968452713),
        (19, 'Vasco Rodrigues','Rua das Acácias, nº14, Covilhã','2009-11-30', 0, 8,'vasco.rodrigues@gmail.com, ', 910123456, 8, 539286071),
        (20, 'Ana Rita Costa','Avenida da República, nº60, Covilhã','2008-04-23', 4, 8,'anarita.costa@hotmail.com', 921234567, 9, 127839605),
        (21, 'Bruno Silva','Rua dos Cais, nº18, Covilhã','2009-07-16', 0, 8,'bruno.silva@gmail.com', 932345678, 8, 697582310),
        (22, 'Carolina Martins','Rua da Liberdade, nº9, Covilhã','2010-10-28', 0, 4,'carolina.martins@gmail.com', 943456789, 7, 315098247),
        (23, 'Daniel Ferreira','Rua do Castelo, nº11, Covilhã','2008-02-21', 0, 4,'daniel.ferreira@gmail.com', 954567890, 9, 864327951),
        (24, 'Elisa Sousa','Rua das Amendoeiras, nº5, Covilhã','2010-06-13', 5, 12,'elisa.sousa@hotmail.com', 965678901, 7, 521437698),
        (25, 'Francisco Santos','Rua das Oliveiras, nº30, Covilhã','2008-09-07', 1, 4,'francisco.santos@gmail.com', 976789012, 9, 749102386),
        (26, 'Gabriela Oliviera','Rua da Esperança, nº20, Covilhã','2008-12-19', 2, 4,'gabriela.oliveira@gmail.com', 987890123, 9, 936205714),
        (27, 'Hugo Rodrigues','Rua dos Cravos, nº15, Covilhã','2010-03-25', 0, 4,'hugo.rodrigues@hotmail.com', 998901234, 7, 287419563),
        (28, 'Inês Alves','Avenida da Boavista, nº75, Covilhã','2008-08-14', 0, 4,'ines.alves@gmail.com', 909012345, 9, 610832975),
        (29, 'João Ferreira','Rua da Alegria, nº40, Covilhã','2009-12-02', 3, 4,'joao.ferreira@hotmail.com', 920123456, 8, 174968523),
        (30, 'Lara Silva','Rua das Flores, nº12, Covilhã','2008-05-26', 1, 4,'lara.silva@hotmail.com', 931234567, 9, 823576419)
    ;
--
-- DELETE FROM Administrador;
-- SELECT * FROM Administrador;

-- Povoamento da tabela "Professor"
INSERT INTO Professor (id, email, numero_telefone, nome, rua, numero_porta, localidade, preco_aula, Disciplina_id)
VALUES
    (1, 'asilva@gmail.com', '956784321', 'Ana Silva', 'Rua dos Barcos', 'nr 25', 'Covilhã', '10', '1'),
    (2, 'csantos@gamil.com', '931234567', 'Carlos Santos', 'Rua do Automovel', 'nr 3', 'Covilhã', '10', '9'),
    (3, 'joliveira@gmail.com', '986754321', 'João Oliveira', 'Praça da Liberdade', 'nr 80', 'Covilhã', '10', '2'),
    (4, 'mfernandes@gamil.com', '954321087', 'Maria Fernandes', 'Rua da Serra', 'nr 30', 'Covilhã', '10', '3'),
    (5, 'jloureiro@gmail.com', '934567890', 'Joana Loureiro', 'Avenida dos Artesãos', 'nr 11', 'Covilhã', '10', '8'),
    (6, 'palmeida@gmail.com', '978563210', 'Pedro Almeida', 'Rua das Andorinhas', 'nr 5', 'Covilhã', '10', '6'),
    (7, 'msoares@gmail.com', '960987654', 'Marta Soares', 'Rua dos Poestas', 'nr 7', 'Covilhã', '10', '4'),
    (8, 'dmiranda@gmail.com', '934321098', 'Diogo Miranda', 'Praça da Alegria', 'nr 2', 'Covilhã', '10', '5'),
    (9, 'scerqueira@gmail.com', '968765432', 'Sandra Cerqueira', 'Rua dos Castelos', 'nr 9', 'Covilhã', '10', '7'),
    (10, 'pmatos@gmail.com', '915432109', 'Paulo Matos', 'Rua do Comércio', 'nr 3', 'Covilhã', '10', '10');
--
-- DELETE FROM Professor;
-- SELECT * FROM Professor;

INSERT INTO Pagamento (id, estado_pagamento, valor, fatura, data_pagamento, metodo_pagamento, Aluno_id)
VALUES
    (1, 'Sim', 80, 'Sim', '2022-01-02', 'Dinheiro', 1),
    (2, 'Sim', 110, 'Sim', '2022-01-03', 'Transferencia', 2),
    (3, 'Sim', 80, 'Não', '2022-01-04', 'Transferencia', 3),
    (4, 'Sim', 80, 'Sim', '2022-01-05', 'Transferencia', 4),
    (5, 'Sim', 50, 'Não', '2022-01-06', 'Transferencia', 5),
    (6, 'Sim', 60, 'Não', '2022-01-07', 'Dinheiro', 6),
    (7, 'Sim', 70, 'Não', '2022-01-08', 'Dinheiro', 7),
    (8, 'Não', 60, NULL, NULL, NULL, 8),
    (9, 'Sim', 120, 'Sim', '2022-01-02', 'Transferencia', 9),
    (10, 'Não', 10, NULL, NULL, NULL, 10),
    (11, 'Sim', 120, 'Sim', '2022-01-02', 'Dinheiro', 11),
    (12, 'Não', 40, NULL, NULL, NULL, 12),
    (13, 'Sim', 80, 'Sim', '2022-01-02', 'Dinheiro', 13),
    (14, 'Não', 40, NULL, NULL, NULL, 14),
    (15, 'Sim', 80, 'Não', '2022-01-02', 'Dinheiro', 15),
    (16, 'Sim', 70, 'Sim', '2022-01-02', 'Dinheiro', 16),
    (17, 'Sim', 80, 'Não', '2022-01-02', 'Dinheiro', 17),
    (18, 'Não', 40, NULL, NULL, NULL, 18),
    (19, 'Não', 80, NULL, NULL, NULL, 19),
    (20, 'Não', 40, NULL, NULL, NULL, 20),
    (21, 'Sim', 80, 'Não', '2022-01-02', 'Dinheiro', 21),
    (22, 'Não', 40, NULL, NULL, NULL, 22),
    (23, 'Sim', 40, 'Sim', '2022-01-02', 'Transferencia', 23),
    (24, 'Não', 70, NULL, NULL, NULL, 24),
    (25, 'Não', 30, NULL, NULL, NULL, 25),
    (26, 'Sim', 20, 'Não', '2022-01-02', 'Transferencia', 26),
    (27, 'Sim', 40, 'Sim', '2022-01-03', 'Dinheiro', 27),
    (28, 'Sim', 40, 'Sim', '2022-01-04', 'Transferencia', 28),
    (29, 'Não', 10, NULL, NULL, NULL, 29),
    (30, 'Sim', 30, 'Sim', '2022-01-06', 'Transferencia', 30);
--
-- DELETE FROM Pagamento;
-- SELECT * FROM Pagamento;

-- Povoamento da tabela "Emprega"
INSERT INTO Emprega
    (Administrador_id_utilizador, Professor_id)
    VALUES
        (1,1),
        (2,2),
        (2,3),
        (1,4),
        (2,5),
        (2,6),
        (1,7),
        (1,8),
        (1,9),
        (1,10)
    ;
--
-- DELETE FROM Emprega;
-- SELECT * FROM Emprega;

INSERT INTO Explica
    (Professor_id, Aluno_id)
    VALUES
        (1,1),
        (6,1),
        (3,2),
        (9,2),
        (5,2),
        (7,3),
        (8,3),
        (2,4),
        (6,4),
        (1,4),
        (9,5),
        (5,5),
        (10,6),
        (3,6),
        (6,7),
        (2,7),
        (8,8),
        (7,8),
        (1,9),
        (6,9),
        (2,9),
        (3,10),
        (5,11),
        (9,11),
        (7,11),
        (6,12),
        (4,13),
        (2,13),
        (8,14),
        (10,15),
        (7,15),
        (4,16),
        (6,16),
        (2,16),
        (7,17),
        (8,17),
        (9,18),
        (5,19),
        (9,19),
        (3,20),
        (4,20),
        (2,21),
        (8,21),
        (6,22),
        (3,23),
        (5,24),
        (7,24),
        (9,24),
        (4,25),
        (1,26),
        (7,27),
        (10,28),
        (6,29),
        (7,30)
    ;
--
-- DELETE FROM Explica;
-- SELECT * FROM Explica;

-- Povoamento da tabela "Gera"
INSERT INTO Gera
    (Administrador_id_utilizador, Pagamento_id)
    VALUES
        (1,1),
        (2,2),
        (1,3),
        (1,4),
        (1,5),
        (1,6),
        (2,7),
        (2,8),
        (2,9),
        (1,10),
        (1,11),
        (1,12),
        (2,13),
        (2,14),
        (1,15),
        (2,16),
        (1,17),
        (2,18),
        (2,19),
        (2,20),
        (1,21),
        (2,22),
        (1,23),
        (2,24),
        (1,25),
        (2,26),
        (2,27),
        (1,28),
        (1,29),
        (2,30)
    ;
--
-- DELETE FROM Gera;
-- SELECT * FROM Gera;

