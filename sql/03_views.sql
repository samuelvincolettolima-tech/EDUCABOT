CREATE VIEW vw_DesempenhoCompleto AS
SELECT 
    A.Nome,
    A.Turma,
    P.Materia,
    P.Semestre,
    P.DesempenhoFinal
FROM Alunos A
JOIN Progresso P ON A.Id = P.AlunoId;
GO
