INSERT INTO tbl_turma (sigla, nome) 
VALUES ('INF', 'Informática'), ('CONT', 'Contabilidade');

INSERT INTO tbl_alunos (cod_turma, nome, cpf, rg, telefone, telefone_responsavel, email, data_nascimento) VALUES
(1, 'João Silva', '12345678901', 'MG1234567', '11987654321', '11987654321', 'joao.silva@email.com', '2000-01-01'),
(1, 'Maria Oliveira', '23456789012', 'SP2345678', '11987654322', '11987654322', 'maria.oliveira@email.com', '2000-02-02'),
(1, 'Carlos Souza', '34567890123', 'RJ3456789', '11987654323', '11987654323', 'carlos.souza@email.com', '2000-03-03'),
(1, 'Ana Costa', '45678901234', 'ES4567890', '11987654324', '11987654324', 'ana.costa@email.com', '2000-04-04'),
(1, 'Pedro Santos', '56789012345', 'BA5678901', '11987654325', '11987654325', 'pedro.santos@email.com', '2000-05-05'),
(2, 'Lucas Martins', '67890123456', 'SC6789012', '11987654326', '11987654326', 'lucas.martins@email.com', '2000-06-06'),
(2, 'Paula Fernandes', '78901234567', 'PR7890123', '11987654327', '11987654327', 'paula.fernandes@email.com', '2000-07-07'),
(2, 'Fernando Rocha', '89012345678', 'RS8901234', '11987654328', '11987654328', 'fernando.rocha@email.com', '2000-08-08'),
(2, 'Camila Dias', '90123456789', 'MT9012345', '11987654329', '11987654329', 'camila.dias@email.com', '2000-09-09'),
(2, 'Roberto Lima', '01234567890', 'MS0123456', '11987654330', '11987654330', 'roberto.lima@email.com', '2000-10-10');

INSERT INTO tbl_disciplinas (cod_turma, sigla, nome) VALUES
(1, 'PROG', 'Programação'),
(1, 'BD', 'Banco de Dados'),
(1, 'WEB', 'Desenvolvimento Web'),
(1, 'SO', 'Sistemas Operacionais'),
(2, 'CONT1', 'Contabilidade Básica'),
(2, 'ECON', 'Economia'),
(2, 'DIR', 'Direito Empresarial'),
(2, 'MATH', 'Matemática Financeira');
