CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE aluno (
ra CHAR(8) PRIMARY KEY,
nome VARCHAR(45),
bairro VARCHAR(45)
);

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
responsavel varchar(45));

-- Configurar a chave estrangeira 
ALTER TABLE aluno ADD COLUMN fkEmpresa int,
ADD foreign key (fkEmpresa) REFERENCES empresa(idEmpresa);
DESC aluno;

INSERT INTO empresa VALUES 
(null, 'C6Bank', 'Andressa'),
(null, 'Safra', 'João'),
(null, 'Tivit', 'Tatiana');

SELECT * FROM empresa;

INSERT INTO aluno VALUES 
('01231777', 'Cassio', 'Itaquera', 3),
('01231888', 'Thiago', 'Sacomã', 3),
('01231999', 'Lorena', 'Franscisco', 2),
('01231666', 'João', 'Grajaú', 1);

SELECT * FROM aluno;

-- Como adicionar foreign key

SELECT * FROM aluno JOIN empresa 
ON idEmpresa = fkEmpresa;

-- Apelidando um campo // forma melhor de fazer para mostrar mais bonito
SELECT 
aluno.nome AS 'Nome Aluno',
empresa.nome AS 'Nome Empresa'
FROM aluno JOIN empresa
ON aluno.fkEmpresa = empresa.idEmpresa;
 

