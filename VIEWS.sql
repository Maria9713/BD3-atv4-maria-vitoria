#CRIAÇÃO VIEWS ALUNOS & TURMA#    
    CREATE VIEW listagem_alunos_turma AS
SELECT 
    a.nome, a.telefone_aluno, a.telefone_responsavel, a.email, t.sigla, t.nome AS nome_turma
FROM 
    tbl_alunos a
INNER JOIN 
    tbl_turma t ON a.cod_turma = t.cod_turma;
    
#DICIPLINA & TURMA#  
CREATE VIEW listagem_disciplinas_turma AS
SELECT
	d.sigla AS sigla_disciplinas,
    tt.sigla AS sigla_turma,
    tt.nome
FROM tbl_disciplinas AS d
INNER JOIN tbl_turma tt ON d.cod_turma = tt.cod_turma;

#ALUNOS & TURMA & DISCIPLINA#
CREATE VIEW listagem_alunos_turma_disciplinas AS
SELECT
	a.nome AS nome_aluno,
    a.telefone_aluno,
    a.telefone_responsavel,
    a.email,
    tt.sigla AS sigla_turma,
    tt.nome AS nome_turma,
    d.sigla AS sigla_disciplina
FROM tbl_alunos AS a
INNER JOIN tbl_turma AS tt ON tt.cod_turma = a.cod_turma
INNER JOIN tbl_disciplinas AS d ON d.cod_turma = tt.cod_turma;


#SELECT * FROM listagem_alunos_turma;#
#SELECT * FROM listagem_disciplinas_turma;#
#SELECT * FROM listagem_alunos_turma_disciplinas;#