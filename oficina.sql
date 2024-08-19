-- criação do BD
CREATE DATABASE IF NOT EXISTS oficina;
USE oficina;

-- Criando as tabelas
-- cliente
DROP TABLE cliente;
CREATE TABLE cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sobrenome VARCHAR(45) NOT NULL,
    contato CHAR(11) NOT NULL
);

-- endereços dos clientes
DROP TABLE enderecos;
CREATE TABLE enderecos_clientes (
	idEndereco INT AUTO_INCREMENT,
    idECliente INT,
    sigla_estado VARCHAR(2) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    cep CHAR(8),
    PRIMARY KEY (idEndereco, idECliente),
    CONSTRAINT fk_endereco_cliente FOREIGN KEY (idECliente) REFERENCES cliente(idCliente)
);

-- endereços dos mecanicos
CREATE TABLE enderecos_mecanicos (
	idEndereco INT AUTO_INCREMENT,
    idEMecanico INT,
    sigla_estado VARCHAR(2) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    cep CHAR(8),
    PRIMARY KEY (idEndereco, idEMecanico),
    CONSTRAINT fk_endereco_mecanico FOREIGN KEY (idEMecanico) REFERENCES mecanico(idMecanico)
);

-- veículo
DROP TABLE veiculo;
CREATE TABLE veiculo (
	idVeiculo INT AUTO_INCREMENT,
    idVCliente INT,
    placa VARCHAR(45) NOT NULL,
    marca VARCHAR(45) DEFAULT "indefinido",
    descricao TEXT,
    PRIMARY KEY (idVeiculo, idVCliente),
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (idVCliente) REFERENCES cliente(idCliente)
);

-- mecânico
DROP TABLE mecanico;
CREATE TABLE mecanico (
	idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sobrenome VARCHAR(45) NOT NULL,
    contato CHAR(11) NOT NULL,
    especialidade ENUM('Mecânica geral','Motor/transmissão','Suspensão/direção','Sistema elétrico','Funilaria/pintura') NOT NULL
);

-- serviço
DROP TABLE servico;
CREATE TABLE servico (
	idServico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(45) ,
    valor_peça FLOAT NOT NULL,
    tipo_peça VARCHAR(45)
);

-- equipe de mecânico
DROP TABLE equipe_de_mecanicos;
CREATE TABLE equipe_de_mecanicos (
	idEquipe INT NOT NULL,
	idEqMecanico INT,
    idEqServico INT,
    avaliacao FLOAT,
    PRIMARY KEY (idEquipe,idEqMecanico, idEqServico),
    CONSTRAINT fk_equipe_mecanico FOREIGN KEY (idEqMecanico) REFERENCES mecanico(idMecanico),
    CONSTRAINT fk_equipe_servico FOREIGN KEY (idEqServico) REFERENCES servico(idServico)
);

-- ordem de serviço
DROP TABLE ordem_de_servico;
CREATE TABLE ordem_de_servico (
	numero INT AUTO_INCREMENT,
	idOEqMecanico INT,
    idOServico INT,
    stts ENUM('Não iniciado','Em andamento', 'Finalizado') DEFAULT 'Não iniciado',
    valor FLOAT NOT NULL,
    data_emissao DATE NOT NULL,
    data_conclusao DATE NOT NULL,
    PRIMARY KEY (numero, idOEqMecanico,idOServico),
    CONSTRAINT fk_ordem_equipe_mecanico FOREIGN KEY (idOEqMecanico) REFERENCES equipe_de_mecanicos(idEquipe),
    CONSTRAINT fk_ordem_servico FOREIGN KEY (idOServico) REFERENCES servico(idServico)
); 

SHOW TABLES;
DESC cliente;
DESC enderecos_clientes;
DESC enderecos_mecanicos;
DESC mecanico;
DESC servico;
DESC veiculo;
DESC equipe_de_mecanicos;
DESC ordem_de_servico;








