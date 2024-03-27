DELIMITER $

CREATE TRIGGER trg_delete_alunos BEFORE DELETE ON tbl_alunos
FOR EACH ROW
BEGIN
INSERT INTO tbl_alunos_bkp
SET

	cod_aluno = OLD.cod_aluno, 
    cod_turma = OLD.cod_turma,
    nome = OLD.nome,
    cpf = OLD.cpf,
    rg = OLD.rg,
    telefone = OLD.telefone,
    telefone_responsavel = OLD.telefone_responsavel,
    email = OLD.email,
    data_nascimento = OLD.data_nascimento.
	date_delete = now();

END
$