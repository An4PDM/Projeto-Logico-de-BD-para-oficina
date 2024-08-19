-- Persistência de dados
-- cliente
INSERT INTO cliente (nome,sobrenome,contato) 
	VALUES ('Maria','Conceição',11923412554),
    ('Joana','Montenegro',12965542765),
    ('Claudio','Bezerra', 13985639612),
    ('Luan','Silva',11985402941),
    ('Alana','Cristina',11993450947);
    
SELECT * FROM cliente;
    
-- enderecos_clientes
INSERT INTO enderecos_clientes (idECliente,sigla_estado,cidade,cep) 
	VALUES (1,'SP','Poá', 12345678),
    (2,'SP','São José dos Campos', 12345687),
    (3,'SP', 'Mongaguá', 87654321),
    (4,'SP', 'São Paulo', 12378456),
    (5,'SP', 'Mogi das Cruzes', 56784321);
    
-- veiculo
INSERT INTO veiculo (idVCliente,placa,marca,descricao)
	VALUES (1, 'ABC123','Citroen',NULL),
    (2,'345ABC','Chevrolet','Problema no freio'),
    (3,'123DEF','Citroen','Vidro da janela rachado'),
    (4,'678ABD','Fiat','Porta traseira com problema para fechar'),
    (5,'FGH332','Jeep','Alarme não está funcionando');
    
-- mecanico
-- especialidade: 'Mecânica geral','Motor/transmissão','Suspensão/direção','Sistema elétrico','Funilaria/pintura'
INSERT INTO mecanico (nome,sobrenome,contato,especialidade)
	VALUES ('Geraldo', 'Santos',11982323348,'Mecânica geral'),
    ('Paulo','Cortez','13985506394','Mecânica geral'),
    ('Juliana','Fonseca',11943323556,'Sistema elétrico'),
    ('Carla','Juvenez',12943357701,'Motor/transmissão'),
    ('Barbara','Lopes',11954496854,'Motor/transmissão'),
    ('Rodrigo','Borges',13994055976,'Suspensão/direção'),
    ('Julio','Fortinelli',12976657984,'Suspensão/direção'),
    ('Livia','Rodrigues',11956134840,'Funilaria/pintura');
    
-- enderecos_mecanicos
INSERT INTO enderecos_mecanicos (idEMecanico,sigla_estado,cidade,cep) 
	VALUES (1,'SP','São Paulo', 12343328),
    (2,'SP','São Paulo', 12335347),
    (3,'SP', 'Ferraz de Vasconcelos', 87248521),
    (4,'SP', 'Santo André', 12378442),
    (5,'SP', 'São Paulo', 55604321),
    (6,'SP','Poá',29487534),
    (7,'SP','Mogi das Cruzes',58473598),
    (8,'SP','Suzano',12345768);
    
-- serviço
INSERT INTO servico (descricao,valor_peça,tipo_peça)
	VALUES ('Pintura  das portas', 45.90, NULL),
    ('Troca do freio', 280.90, 'freio'),
    ('Troca do vidro', 300, 'vidro da janela'),
    ('Reparo da porta traseira',150, 'Porta e rolamento'),
    ('Troca do sistema de alarme', 230, 'alarme');
    
-- equipe de mecanicos
INSERT INTO equipe_de_mecanicos VALUES 
	(1,1,1,4),
    (1,2,2,4),
    (1,3,3,4),
    (1,4,3,4),
    (2,5,4,4.5),
    (2,6,4,4.5),
    (2,7,5,4.5),
    (2,8,5,4.5);

-- ordem de serviço
-- status: 'Não iniciado','Em andamento', 'Finalizado') DEFAULT 'Não iniciado'
INSERT INTO ordem_de_servico (idOEqMecanico,idOServico,stts,valor,data_emissao,data_conclusao)
	VALUES (1,1,'Finalizado',383.60, '2024-04-21','2024-04-30'),
    (1,2,'Em andamento', 480.90, '2024-08-14', '2024-08-19'),
    (1,3,'Em andamento', 500, '2024-08-15', '2024-08-22'),
    (2,4,'Finalizado', 350, '2024-07-27', '2024-08-02'),
    (2,5,'Não iniciado',430,'2024-08-19', '2024-08-27');   
    

    

    

    
    
    
    
    