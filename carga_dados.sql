-- Inserir dados na tabela Laboratorio
INSERT INTO Laboratorio (Nome, Localizacao, Capacidade) VALUES 
('Laboratório de Informática', 'Bloco A, Sala 101', 40),
('Laboratório de Química', 'Bloco B, Sala 202', 30),
('Laboratório de Física', 'Bloco C, Sala 303', 25);

-- Inserir dados na tabela Usuario
INSERT INTO Usuario (Nome, Email, Tipo) VALUES 
('João Silva', 'joao.silva@exemplo.com', 'professor'),
('Maria Oliveira', 'maria.oliveira@exemplo.com', 'estudante'),
('Carlos Souza', 'carlos.souza@exemplo.com', 'administrador');

-- Inserir dados na tabela Horario
INSERT INTO Horario (Intervalo_Tempo) VALUES 
('08:00 - 10:00'),
('10:00 - 12:00'),
('14:00 - 16:00');

-- Inserir dados na tabela Reserva
INSERT INTO Reserva (ID_LABORATORIO, ID_USUARIO, Data, ID_HORARIO, Status) VALUES 
(1, 1, '2024-12-05', 1, 'confirmada'),
(2, 2, '2024-12-06', 2, 'pendente'),
(3, 1, '2024-12-07', 3, 'cancelada');

-- Inserir dados na tabela Manutencao
INSERT INTO Manutencao (ID_LABORATORIO, Data, Descricao) VALUES 
(1, '2024-12-01', 'Troca de projetor'),
(2, '2024-12-02', 'Revisão elétrica'),
(3, '2024-12-03', 'Limpeza geral');

SELECT * FROM Laboratorio; -- Todos os valores de ID_LABORATORIO
SELECT * FROM Usuario;     -- Todos os valores de ID_USUARIO
SELECT * FROM Horario;     -- Todos os valores de ID_HORARIO
SELECT * FROM Reserva;     -- Todos os valores de ID_RESERVA
SELECT * FROM Manutencao;  -- Todos os valores de ID_MANUTENCAO

-- Listar todas as reservas confirmadas
SELECT * FROM Reserva      
WHERE Status = 'confirmada';

--  Listar manutenção de um laboratório específico
SELECT * FROM Manutencao
WHERE ID_LABORATORIO = 1;
