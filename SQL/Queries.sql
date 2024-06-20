-- Query 1 - Ver os alunos inscritos em cada turno

SELECT Aluno.nome
FROM Aluno
JOIN Explica ON Aluno.id = Explica.Aluno_id
JOIN Professor ON Explica.Professor_id = Professor.id
JOIN Disciplina ON Professor.Disciplina_id = Disciplina.Id
WHERE Disciplina.turno = <ID do turno da disciplina>

-- Nota : substituir 'ID do turno da disciplina' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 2 - Ver em que disciplinas um aluno está inscrito

SELECT Disciplina.nome
FROM Disciplina
JOIN Professor ON Disciplina.id = Professor.Disciplina_id
JOIN Explica ON Professor.id = Explica.Professor_id
JOIN Aluno ON Explica.Aluno_id = Aluno.id
WHERE Aluno.nome = '<Nome do aluno>'

-- Nota : substituir 'Nome do aluno' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 3 - Obter a lista de alunos inscritos no centro de explicações, ordenada pelo ano escolar, contendo o seu nome, contacto de telefone e Email

SELECT Aluno.nome, Aluno.ano_escolar, Aluno.numero_telefone, Aluno.email
FROM Aluno
ORDER BY Aluno.ano_escolar ASC

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 4 - Obter o estado atual do pagamento de um determinado aluno no mês atual, se pagou ou não

SELECT Aluno.nome, Pagamento.estado_pagamento
FROM Aluno
JOIN Pagamento ON Aluno.Id = Pagamento.Aluno_Id
WHERE Aluno.Nome = '<Nome do aluno>' AND MONTH(Pagamento.data_pagamento) = <Numero do mes> AND YEAR(Pagamento.data_pagamento) = <Numero do ano>

-- Nota : substituir 'Nome do aluno' e 'Numero do Mes' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 5 - Listar todos os alunos que ainda não efetuaram o pagamento no mês atual (o estado do pagamento é Nao)

SELECT Aluno.Nome, Pagamento.Valor
FROM Aluno
LEFT JOIN Pagamento ON Aluno.id = Pagamento.Aluno_id
WHERE Pagamento.estado_pagamento = 'Não' AND MONTH(Pagamento.data_pagamento) = <Numero do mes> AND YEAR(Pagamento.data_pagamento) = <Numero do ano>

-- Nota : substituir 'Nome do aluno', 'Numero do Mes' e 'Numero do Ano' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 6 - Listar todos os pagamentos de um dado aluno

SELECT Pagamento.data_pagamento, Pagamento.valor, Pagamento.metodo_pagamento
FROM Pagamento
WHERE Pagamento.Aluno_Id = <AlunoId>

-- Nota: substituir 'AlunoId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 7 - Listar todos os pagamentos efetuados num determinado mês e ano

SELECT Pagamento.Pagamento.data_pagamento, Aluno.nome, Pagamento.valor, Pagamento.metodo_pagamento
FROM Pagamento
JOIN Aluno ON Pagamento.Aluno_Id = Aluno.Id
WHERE YEAR(data) = <Ano>
  AND MONTH(data) = <Mês>

-- Nota : substituir 'Mes' e 'Ano' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 8 - Determinar a faturação num determinado mês

SELECT SUM(valor) AS TotalPago
FROM Pagamento
WHERE YEAR(data_pagamento) = <Ano>
  AND MONTH(data_pagamento) = <Mês>
  AND estado_pagamento = 'Sim'

-- Nota : substituir 'Mes' e 'Ano' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 9 - Alterar o turno da disciplina, bem como as disciplinas em que um aluno está inscrito

-- Adicionar uma disciplina a um aluno
INSERT INTO Explica (Aluno_id, Professor_id)
VALUES (<AlunoId>, <ProfessorId>)

-- Nota: substituir 'AlunoId' e 'ProfessorId' por o que queremos

-- Remover uma disciplina a um aluno
DELETE FROM Explica
WHERE Aluno_id = <AlunoId> AND Professor_id = <ProfessorId>

-- Nota: substituir 'AlunoId' e 'ProfessorId' por o que queremos

-- Nota: Nesta query para adicionar/remover uma disciplina, adicionamos/removemos a correspondencia entre um aluno e um professor (porque um professor tem uma disciplina apenas)
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 10 - Obter a disciplina, o turno, a hora de ínicio, a hora de término e o dia da semana que um professor leciona

SELECT Disciplina.nome, Disciplina.turno, Disciplina.hora_inicio, Disciplina.hora_termino, Disciplina.dia_lecionado
FROM Professor
JOIN Disciplina ON Professor.Disciplina_id = Disciplina.id
WHERE Professor.id = <ProfessorId>

-- Nota: substituir 'ProfessorId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 11 - Adicionar e remover alunos

-- Adicionar aluno
INSERT INTO Aluno (nome, endereço, data_nascimento, faltas, presencas_expectaveis, email, numero_telefone, ano_escolar, nif)
VALUES ('<NomeAluno>', '<Endereco>', '<DataNascimento>', '<Faltas>', '<PresencasExpectaveis>', '<Email>', '<NumeroTelefone>', '<AnoEscolar>', '<NIF>')

-- Nota: substituir todo o que está entre '' por o que queremos

-- Remover aluno
DELETE FROM Aluno
WHERE Id = <AlunoId>

-- Nota: substituir 'AlunoId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 12 - Adicionar e remover professores

-- Adicionar professor
INSERT INTO Professor (email, numero_telefone, nome,rua, numero_porta, localidade, preco_aula)
VALUES ('<Email>', '<NumeroTelefone>', '<Nome>', '<Rua>', '<NumeroPorta>', '<Localidade>', '<PrecoAula>')

-- Nota: substituir todo o que está entre '' por o que queremos

-- Remover professor
DELETE FROM Professor
WHERE Id = <ProfessorId>

-- Nota: substituir 'ProfessorId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 13 - Adicionar e remover disciplinas

-- Adicionar disciplina
INSERT INTO Professor (turno, nome, dia_lecionado, hora_inicio, hora_termino)
VALUES ('<Turno>', '<Nome>', '<DiaLecionado>', '<HoraInicio>', '<HoraTermino>')

-- Nota: substituir todo o que está entre '' por o que queremos

-- Remover disciplina
DELETE FROM Disciplina
WHERE Id = <DisciplinaId>

-- Nota: substituir 'DisciplinaId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 14 - Adicionar e remover pagamentos

-- Adicionar pagamento
INSERT INTO Pagamento (estado_pagamento,valor, fatura,data_pagamento, metodo_pagamento)
VALUES ('<EstadoPagamento>', '<Valor>', '<Fatura>', '<DataPagamento>', '<MetodoPagamento>')

-- Nota: substituir todo o que está entre '' por o que queremos

-- Remover pagamento
DELETE FROM Pagamento
WHERE Id = <PagamentoId>

-- Nota: substituir 'PagamentoId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 15 - Adicionar, editar e remover informações dos alunos

UPDATE Aluno
SET <Atributo> = '<NovoAtributo>'
WHERE Id = <AlunoId>

-- Nota: substituir 'Atributo', 'NovoAtributo' e 'AlunoId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 16 - Adicionar, editar e remover informações dos professores

UPDATE Professor
SET <Atributo> = '<NovoAtributo>'
WHERE Id = <ProfessorId>

-- Nota: substituir 'Atributo', 'NovoAtributo' e 'ProfessorId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 17 - Adicionar, editar e remover informações das discipinas

UPDATE Disciplina
SET <Atributo> = '<NovoAtributo>'
WHERE Id = <DisciplinaId>

-- Nota: substituir 'Atributo', 'NovoAtributo' e 'DisciplinaId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 18 - Adicionar, editar e remover informações dos administradores

UPDATE Administrador
SET <Atributo> = '<NovoAtributo>'
WHERE Id = <AdministradorId>

-- Nota: substituir 'Atributo', 'NovoAtributo' e 'AdministradorId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 19 - Adicionar, editar e remover informações dos pagamentos

UPDATE Pagamento
SET <Atributo> = '<NovoAtributo>'
WHERE Id = <PagamentoId>

-- Nota: substituir 'Atributo', 'NovoAtributo' e 'PagamentoId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 20 - Indicar quais os turnos (com todas as informações) a que um determinado aluno pertence e o valor que paga por aula

SELECT Disciplina.nome, Professor.nome, Disciplina.dia_lecionado, Disciplina.hora_inicio, Disciplina.hora_termino, Disciplina.turno, Professor.preco_aula
FROM Aluno
JOIN Explica ON Aluno.Id = Explica.Aluno_Id
JOIN Professor ON Explica.Professor_Id = Professor.Id
JOIN Disciplina ON Professor.Disciplina_Id = Disciplina.Id
WHERE Aluno.Id = <AlunoId>

-- Nota: substituir 'AlunoId' por o que queremos
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PROCEDURES

DELIMITER //
CREATE PROCEDURE GetTotalAlunos()
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Aluno;
    SELECT total;
END //
DELIMITER ;

CALL GetTotalAlunos();

DELIMITER //
CREATE PROCEDURE GetTotalProfessores()
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Professor;
    SELECT total;
END //
DELIMITER ;

CALL GetTotalProfessor();

DELIMITER //
CREATE PROCEDURE GetTotalDisciplinas()
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Disciplina;
    SELECT total;
END //
DELIMITER ;

CALL GetTotalDisciplinas();
