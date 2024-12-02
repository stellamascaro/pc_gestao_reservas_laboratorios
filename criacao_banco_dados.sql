-- Criar Banco de Dados
CREATE DATABASE GestaoLaboratorios
USE GestaoLaboratorios;

-- Criar tabela Laboratorio
CREATE TABLE laboratorio (
    id_laboratorio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    localizacao VARCHAR(255) NOT NULL,
    capacidade INT NOT NULL
) ENGINE=InnoDB;

-- Criar tabela Usuario
CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    tipo ENUM('estudante', 'professor', 'administrador') NOT NULL
) ENGINE=InnoDB;

-- Criar tabela Horario
CREATE TABLE horario (
    id_horario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    intervalo_tempo VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- Criar tabela Reserva
CREATE TABLE reserva (
    id_reserva INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_laboratorio INT not null,
    id_usuario INT not null,
    data DATE NOT NULL,
    id_horario INT not null,
    status ENUM('pendente', 'confirmada', 'cancelada') NOT NULL,
    FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id_laboratorio),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_horario) REFERENCES horario(id_horario)
) ENGINE=InnoDB;

-- Criar tabela Manutencao
CREATE TABLE manutencao (
    id_manutencao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_laboratorio INT,
    data DATE NOT NULL,
    descricao VARCHAR(255),
    FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id_laboratorio)
) ENGINE=InnoDB;

-- Listar todas as tabelas
SHOW TABLES;





