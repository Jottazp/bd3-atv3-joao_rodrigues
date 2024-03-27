CREATE VIEW listagem_alunos_turma AS
SELECT 
    ta.nome, ta.telefone, ta.telefone_responsavel, ta.email, 
    tt.sigla, tt.nome AS nome_turma
FROM 
    tbl_alunos AS ta
INNER JOIN 
    tbl_turma AS tt 
ON ta.cod_turma = tt.cod_turma;

CREATE VIEW listagem_disciplina_turma AS
SELECT
	td.sigla AS sigla_disciplina, 
    tt.sigla, tt.nome
FROM
	tbl_disciplinas AS td
INNER JOIN 
	tbl_turma AS tt
ON td.cod_turma = tt.cod_turma;

CREATE VIEW listagem_alunos_turma_disciplina AS
SELECT
	ta.nome, ta.telefone, ta.telefone_responsavel, ta.email,
    tt.sigla, tt.nome AS nome_disciplina,
    td.sigla AS sigla_disciplina
FROM
	tbl_alunos AS ta
INNER JOIN tbl_turma AS tt 
ON ta.cod_turma = tt.cod_turma
INNER JOIN tbl_disciplinas AS td 
ON td.cod_turma = tt.cod_turma;