-- Consultas 
USE oficina;
-- Seleção de todos os clientes com o carro da marca Citroen
SELECT * FROM cliente;
SELECT * FROM veiculo;

SELECT concat(nome, ' ', sobrenome) AS 'nome completo', marca, placa
	FROM cliente INNER JOIN veiculo
    ON idCliente=idVCliente
    WHERE marca='Citroen';
    
-- Calculo do preço total cobrado por cada equipe
SELECT * FROM ordem_de_servico;
SELECT * FROM equipe_de_mecanicos;

SELECT count(idOEqMecanico) AS 'Quant de OS',
	sum(valor) AS 'Total da equipe 1'
    FROM ordem_de_servico WHERE idOEqMecanico=1;

-- Ordenação dos endereços dos mecânicos por cidade
SELECT * FROM enderecos_mecanicos ORDER BY cidade;

-- Agrupamento por especialidade e contagem de profissionais em SP
SELECT count(especialidade) AS 'quantidade por especialidade', especialidade, sigla_estado FROM mecanico 
	INNER JOIN enderecos_mecanicos 
    ON idMecanico=idEMecanico
	GROUP BY especialidade, sigla_estado
    HAVING sigla_estado='SP';



