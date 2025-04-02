-- Exercício 1: Crie uma união das tabelas student e takes
SELECT * FROM student s INNER JOIN takes t ON s.ID = t.ID
--seleciona tudo de students e junta internamente com o takes

-- Exercício 2: Contar a quantidade de cursos realizados por alunos do depertamento de Civil Eng
SELECT 
    s.ID AS student_id,
    s.name AS student_name,
    COUNT(t.course_id) AS courses_taken
    --define s.ID e s.name, dá o comando de contar os cursos
FROM 
    student s
    --pega as informações da tabela student
LEFT JOIN 
    takes t ON s.ID = t.ID
    --junta à tabela da esquerda de takes que mostra os cursos feitos
WHERE 
    s.dept_name = 'Civil Eng.'
    --especifica os alunos pelo departamento
GROUP BY 
    s.ID, s.name
    --agrupa de acordo com id e nome
ORDER BY 
    courses_taken DESC;
    --organiza pelos cursos feitos em ordem decrescente

-- Exercício 3: Crie uma view ‘civil_eng_students’ que mostra a relação construída na tabela 2
CREATE VIEW civi_eng_students as
-- cria a view (que está vazia até então)
SELECT
		s.ID as student_ID
		s.names as student_name
		s.dept_name as department
		COUNT(t.course.id) as courses_taken
--começa a preencher a view e mostra como eles serão apresentados e contados
FROM 
		student s
--indica de onde serão retirados os dados
LEFT JOIN 
		takes t ON s.ID = t.ID
--junta a tabela takes à tabela student
WHERE 
		s.dept_name = 'Civil Eng'
		s.ID, s.name. s.dept_name
--especificação do departamento
ORDER BY courses_taken DESC
--organiza de acordo com os cursos em ordem decrescente
