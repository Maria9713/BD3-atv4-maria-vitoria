DELIMITER $

CREATE PROCEDURE ListarTurmasEAlunos()
BEGIN
    SELECT 
        t.sigla AS sigla_turma, 
        a.nome AS nome_aluno
    FROM 
        tbl_turma t
    INNER JOIN 
        tbl_alunos a ON t.cod_turma = a.cod_turma;
END 

$

CALL ListarTurmasEAlunos( );
