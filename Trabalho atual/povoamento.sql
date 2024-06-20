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
    (id, nome, numero_telefone, email)
    VALUES
		(1, 'Maria Caetana', '942287061','mcaetano@gmail.com'),
		(2,'António Esteves', '964238042','aesteves@gmail.com')
    ;
--
-- DELETE FROM Administrador;
-- SELECT * FROM Administrador;

--
-- Povoamento da tabela "Disciplina"
INSERT INTO Disiplina
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
    (id, nome, endereço, data_nascimento, faltas, presencas_expectaveis, email, numero_telefone, ano_escolar, nif)
    VALUES
		(1, 'Ana Silva', 'Rua das Flores, nº100, Covilhã','05/12/2009', 0, 8, 'ana.silva@gmail.com', 912345678, 8, 362519478),                           
		(2, 'Bruno Santos', 'Rua dos Pinheiros, nº45, Covilhã','22/02/2010', 1, 12, 'bruno.santos@gmail.com', 923456789, 7, 891602437),
        (3, 'Carolina Oliveira', 'Avenida Central, nº20, Covilhã','18/06/2009', 0, 8, 'carol.oliveira@hotmail.com', 934567890, 8, 453287196),
        (4, 'Diogo Pereira', 'Rua do Mar, nº15, Covilhã','12/09/2010', 4, 12, 'diogo.pereira@gmail.com', 945678901, 7, 730819264),
        (5, 'Elena Rodrigues', 'Rua dos Lírios, nº30, Covilhã','01/11/2009', 3, 8, 'elena.rodrigues@hotmail.com', 956789012, 8, 142936587),
        (6, 'Francisco Alves', 'Rua das Figueriras, nº10, Covilhã','09/04/2008', 2, 8, 'francisco.alves@gmail.com', 967890123, 9, 629408175),
        (7, 'Gabriela Ferreira', 'Rua do Sol, nº5, Covilhã','14/08/2009', 1, 8, 'gabriela.ferreira@gmail.com', 978901234, 8, 216594083),
        (8, 'Henrique Costa','Avenida da Liberdade, nº50, Covilhã','27/07/2010', 2, 8, 'henrique.costa@hotmail.com', 989012345, 7, 947360821),
        (9, 'Inês Sousa','Rua dos Cravos, nº25, Covilhã','10/01/2008', 0, 12,'ines.sousa@gmail.com', 900123456, 9, 518249637),
        (10, 'João Martins','Rua da Praia, nº2, Covilhã','03/05/2009', 3, 4,'joao.martins"hotmail.com', 911234567, 8, 305728941),
        (11, 'Lara Oliviera','Rua das Palmeiras, nº12, Covilhã', '22/10/2008', 0, 12,'lara.oliveira@gmail.com', 922345678, 9, 802163945),
        (12, 'Miguel Ferreira','Rua do Campo, nº7, Covilhã','14/03/2009', 0, 4,'miguel.ferreira@hotmail.com', 933456789, 8, 675894231),
        (13, 'Nuno Silva','Avenida dos Aliados, nº30, Covilhã','20/06/2010', 0, 8,'nuno.silva@gmail.com', 944567890, 7, 438902761),
        (14, 'Olivia Santos','Rua das Violetas, nº8, Covilhã','28/09/2008', 0, 4,'olivia.santos@hotmail.com', 955678901, 9, 926814503),
        (15, 'Pedro Rodrigues','Rua das Rosas, nº25, Covilhã','09/12/2010', 0, 8,'pedro.rodrigues@gmail.com', 966789012, 7, 381695247),
        (16, 'Raquel Almeida','Avenida da Boavista, nº75, Covilhã','17/02/2009', 5, 12,'raquel.alemeida@hotmail.com', 977890123, 8, 574216309),
        (17, 'Sofia Santos','Rua do Comércio, nº40, Covilhã','11/05/2010', 0, 8,'sofia.santos@gmail.com', 988901234, 7, 203851764),
        (18, 'Tiago Oliveira','Rua dos Crisântemos, nº22, Covilhã','08/08/2008', 0, 4,'tiago.olvieira@hotmail.com', 999012345, 9, 968452713),
        (19, 'Vasco Rodrigues','Rua das Acácias, nº14, Covilhã','30/11/2009', 0, 8,'vasco.rodrigues@gmail.com, ', 910123456, 8, 539286071),
        (20, 'Ana Rita Costa','Avenida da República, nº60, Covilhã','23/04/2008', 4, 8,'anarita.costa@hotmail.com', 921234567, 9, 127839605),
        (21, 'Bruno Silva','Rua dos Cais, nº18, Covilhã','16/07/2009', 0, 8,'bruno.silva@gmail.com', 932345678, 8, 697582310),
        (22, 'Carolina Martins','Rua da Liberdade, nº9, Covilhã','28/10/2010', 0, 4,'carolina.martins@gmail.com', 943456789, 7, 315098247),
        (23, 'Daniel Ferreira','Rua do Castelo, nº11, Covilhã','21/02/2008', 0, 4,'daniel.ferreira@gmail.com', 954567890, 9, 864327951),
        (24, 'Elisa Sousa','Rua das Amendoeiras, nº5, Covilhã','13/06/2010', 5, 12,'elisa.sousa@hotmail.com', 965678901, 7, 521437698),
        (25, 'Francisco Santos','Rua das Oliveiras, nº30, Covilhã','07/09/2008', 1, 4,'francisco.santos@gmail.com', 976789012, 9, 749102386),
        (26, 'Gabriela Oliviera','Rua da Esperança, nº20, Covilhã','19/12/2008', 2, 4,'gabriela.oliveira@gmail.com', 987890123, 9, 936205714),
        (27, 'Hugo Rodrigues','Rua dos Cravos, nº15, Covilhã','25/03/2010', 0, 4,'hugo.rodrigues@hotmail.com', 998901234, 7, 287419563),
        (28, 'Inês Alves','Avenida da Boavista, nº75, Covilhã','14/08/2008', 0, 4,'ines.alves@gmail.com', 909012345, 9, 610832975),
        (29, 'João Ferreira','Rua da Alegria, nº40, Covilhã','02/12/2009', 3, 4,'joao.ferreira@hotmail.com', 920123456, 8, 174968523),
        (30, 'Lara Silva','Rua das Flores, nº12, Covilhã','26/05/2008', 1, 4,'lara.silva@hotmail.com', 931234567, 9, 823576419)
    ;
--
-- DELETE FROM Administrador;
-- SELECT * FROM Administrador;

-- Povoamento da tabela "Professor"
INSERT INTO Professor 
    (id, email, numero_telefone, nome,rua, numero_porta, localidade, preco_aula)
    VALUES
        (1, 'asilva@gmail.com', '956784321','Ana Silva','Rua dos Barcos','25','Covilhã','10'),
        (2,'csantos@gamil.com', '931234567','Carlos Santos','Rua do Automovel','3','Covilhã','10'),
        (3,'joliveira@gmail.com','986754321','João Oliveira','Praça da Liberdade','80','Covilhã','10'),
        (4,'mfernandes@gamil.com','954321087','Maria Fernandes','Rua da Serra','30','Covilhã','10'),
        (5,'jloureiro@gmail.com','934567890','Joana Loureiro','Avenida dos Artesãos','11','Covilhã','10'),
        (6,'palmeida@gmail.com','978563210','Pedro Almeida','Rua das Andorinhas','5','Covilhã','10'),
        (7,'msoares@gmail.com','960987654','Marta Soares','Rua dos Poestas','7','Covilhã','10'),
        (8,'dmiranda@gmail.com','934321098','Diogo Miranda','Praça da Alegria','2','Covilhã','10'),
        (9,'scerqueira@gmail.com','968765432','Sandra Cerqueira','Rua dos Castelos','9','Covilhã','10'),
        (10,'pmatos@gmail.com','915432109','Paulo Matos','Rua do Comércio','3','Covilhã')
    ;
--
-- DELETE FROM Professor;
-- SELECT * FROM Professor;

INSERT INTO Pagamento
    (id,estado_pagamento,valor, fatura,data_pagamento, metodo_pagamento)
    VALUES
        (1, 'Ana Silva','Sim',80, 'Sim' , '02/01/2022',	'Dinheiro'),
		(2, 'Bruno Santos', 'Sim',110, 'Sim', '03/01/2022','Transferencia'),
		(3, 'Carolina Oliveira','Sim',80, 'Não' ,'04/01/2022','Transferencia'),
		(4, 'Diogo Pereira','Sim',80, 'Sim' ,'05/01/2022','Transferencia'),
		(5, 'Elena Rodrigues','Sim',50, 'Não' ,	'06/01/2022','Transferencia'),
		(6, 'Francisco Alves','Sim',60, 'Não' ,'07/01/2022','Dinheiro'),
		(7, 'Gabriela Ferreira','Sim',70, 'Não' ,'08/01/2022','Dinheiro'),
		(8, 'Henrique Costa','Não',60,'', '',''),
		(9, 'Inês Sousa','Sim',120, 'Sim' ,'02/01/2022','Transferencia'),
		(10, 'João Martins','Não',10, '' ,'',''),	
		(11, 'Lara Oliveira','Sim',120, 'Sim', '02/01/2022', 'Dinheiro'),	
        (12, 'Miguel Ferreira','Não',40, '' ,'',''),	
		(13, 'Nuno Silva','Sim',80, 'Sim' ,'02/01/2022','Dinheiro'),
		(14, 'Olivia Santos','Não',40, '','',''),	
		(15, 'Pedro Rodrigues','Sim',80, 'Não','02/01/2022','Dinheiro'),
		(16, 'Raquel Almeida', 'Sim', 70, 'Sim','02/01/2022','Dinheiro'),
		(17, 'Sofia Santos','Sim',80, 'Não','02/01/2022','Dinheiro'),
		(18, 'Tiago Oliveira','Não',40, '','',''),
		(19, 'Vasco Rodrigues','Não',80, '','',''),
		(20, 'Ana Rita Costa','Não',40,'','',''),
		(21, 'Bruno Silva','Sim',80, 'Não','02/01/2022','Dinheiro'),
		(22, 'Carolina Martins','Não',40, '','',''),	
		(23, 'Daniel Ferreira','Sim', 40, 'Sim','02/01/2022',	'Transferencia'),
		(24, 'Elisa Sousa','Não',70, '','',''),	
		(25, 'Francisco Santos','Não',30, '','',''),	
		(26, 'Gabriela Oliveira','Sim',20, 'Não','02/01/2022',	'Transferencia'),
		(27, 'Hugo Rodrigues','Sim',40, 'Sim','03/01/2022','Dinheiro'),
		(28, 'Inês Alves','Sim',40, 'Sim','04/01/2022','Transferencia'),
		(29, 'João Ferreira','Não',10, '','',''),	
		(30, 'Lara Silva','Sim',30, 'Sim', '06/01/2022','Transferencia')
			;
--
-- DELETE FROM Pagamento;
-- SELECT * FROM Pagamento;
 

