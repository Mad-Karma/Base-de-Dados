SELECT nome, numero_telefone, email
FROM Aluno
ORDER BY ano_escolar;

-- Para cada aluno
SELECT estado
FROM Pagamento
WHERE id = aluno_id;

-- Para todos os alunos 
SELECT estado_pagamento 
FROM Pagamento
WHERE estado_pagamento ="Sim";

-- Para trocar o turno para cada disciplina  
UPDATE Disciplinas
SET Turno = 'NovoTurno'
WHERE Disciplina_id = 'ID_Disciplina';

-- obter a disciplina, o turno, a hora de ínicio, a hora de término e o dia da semana que um professor leciona
SELECT nome_disciplina, turno, hora_inicio, hora_termino, dia_semana
FROM Disciplina D
JOIN Professor ON professor_id = P.professor_id
WHERE nome_professor = 'NomeProfessor';

--  adicionar e remover alunos 
INSERT INTO Aluno (id, nome, endereco, data_nascimento, faltas, presencas_expectaveis, email, numero_telefone, ano_escolar, nif)
VALUES ('sitio para escrever os valores de cima ');

DELETE FROM Aluno WHERE id = id;


-- O sistema deve posssibilitar editar informações dos alunos.
UPDATE Aluno
SET nome= '', endereco='', data_nascimento='', faltas='', presencas_expectaveis='', email='', numero_telefone='', ano_escolar='', nif=''
WHERE id = id_do_aluno;

-- adcionar e remover professores 
INSERT INTO Professor (id, email, numero_telefone, nome, rua, numero_porta, localidade, preco_aula, disciplina_id)
VALUES ('sitio para escrever os valores de cima ');

DELETE FROM Professor WHERE id = id;


-- O sistema deve posssibilitar editar informações dos Professores.
UPDATE Professor
SET id='', email='', numero_telefone='', nome='', rua='', numero_porta='', localidade='', preco_aula='', disciplina_id=''
WHERE id = id_do_professor;

--  adicionar e remover Disciplina 
INSERT INTO Disciplina (id,turno,nome,dia_lecionado,hora_inicio,hora_termino)
VALUES ('sitio para escrever os valores de cima ');

DELETE FROM Disciplina WHERE id = id;


-- O sistema deve posssibilitar editar informações da Disciplina.
UPDATE Disciplina
SET id='',turno='',nome='',dia_lecionado='',hora_inicio='',hora_termino=''
WHERE id = id_da_disciplina;

--  adicionar e remover Administrador 
INSERT INTO Administrador (id,nome,email,numero_telefone)
VALUES ('sitio para escrever os valores de cima ');

DELETE FROM Administrador WHERE id = id;

-- O sistema deve posssibilitar editar informações do Administrador.
UPDATE Administrador
SET  id='',nome='',email='',numero_telefone=''
WHERE id = id_do_administrador;


-- O sistema deve posssibilitar editar informações do Pagamento
UPDATE Pagamento
SET id='',estado_pagamento='',valor='',fatura='',data_pagamento='',metodo_pagamento='',Aluno_id=''
WHERE id = id_do_pagamento;

--  adicionar e remover Pagamento 
INSERT INTO Pagamento (id,estado_pagamento,valor,fatura,data_pagamento,metodo_pagamento,Aluno_id)
VALUES ('sitio para escrever os valores de cima ');

DELETE FROM Pagamento WHERE id = id;


-- Deve ser possível efetuar uma lista de alunos que ainda não efetuaram o pagamento.
SELECT estado_pagamento 
FROM Pagamento
WHERE estado_pagamento ="Não";




