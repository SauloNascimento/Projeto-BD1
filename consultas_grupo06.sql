/* Consulta 01 - Liste a quantidade de vendas por quarto. */
SELECT q.id_quarto, COUNT(v.id_produto) 
FROM quarto q FULL OUTER JOIN venda v 
ON q.id_quarto = v.id_quarto
GROUP BY q.id_quarto;

/* Consulta 02 - Quais clientes reservaram quartos com equipamentos de “ar condicionado”? */
SELECT c.*
FROM cliente c 
WHERE c.cpf IN 
	(SELECT r.cpf_cliente
     FROM quarto q, equipamento eq, reserva r
	    WHERE q.id_quarto  = eq.id_quarto AND
         q.id_quarto = r.id_quarto AND
         eq.equipamento = 'ar condicionado');
    
/* Consulta 03 - Crie uma view que lista os dependentes nascidos após o ano 2000. */
CREATE VIEW dependentesDoisMil
AS SELECT *
    FROM dependente
    WHERE data_nasc >= '01/01/2001';

/* Consulta 04 - Qual o menor período de hospedagem de um cliente no hotel? */
SELECT MIN(data_fim - data_inicio) as menor_periodo_hospedagem
FROM hospedagem;

/* Consulta 05 - Crie uma view que lista os dependentes e suas titulares do sexo feminino. */
CREATE VIEW dependementeTitularesFemininos(cpf_dependente, titular, nome_dependente, data_nasc, cpf_titular, nome_titular, data_nascimento, sexo, rua, numero, bairro, cep, email) AS 
    SELECT d.*, c.* 
    FROM cliente c, dependente d
    WHERE d.titular = c.cpf AND
        c.sexo = 'F';

/* Consulta 06 - Qual produto está associado a todos os serviços? */
SELECT p.*
FROM produto p
WHERE p.id_bar IS NOT NULL AND
    p.id_lavanderia IS NOT NULL AND
    p.id_rest IS NOT NULL AND
    p.id_frigobar IS NOT NULL;

/* Consulta 07 - Liste a quantidade de quartos por vista. */
SELECT vista, COUNT(*)
FROM quarto
GROUP BY vista;

/* Consulta 08 - Quais clientes do sexo masculino e possuindo dependentes, possuem “gmail” no endereço de email? */
SELECT c.*
FROM cliente c, dependente d
WHERE c.sexo = 'M' and
    c.email LIKE '%gmail%' and
    d.titular = c.cpf;

/* Consulta 09 - Mostre os 3 clientes que tem o menor número de dependentes. */
SELECT *
FROM cliente
WHERE cpf in (SELECT c.cpf
    FROM cliente c FULL OUTER JOIN dependente d
    ON c.cpf = d.titular
    GROUP BY c.cpf
    ORDER BY COUNT(d.titular)
    FETCH FIRST 3 ROWS ONLY);

/* Consulta 10 - Liste o cliente mais velho que reservou um quarto esse ano. */
SELECT c.*
FROM cliente c, reserva r
WHERE c.cpf = r.cpf_cliente and
    to_char(r.data_inicio, 'YYYY') = to_char(sysdate, 'YYYY')
ORDER BY data_nascimento
FETCH FIRST 1 ROWS ONLY;

/* Consulta 11 - Liste o salário dos funcionários prestam serviço com avaliação mínima. */
SELECT salario
FROM funcionario
WHERE cpf in (SELECT DISTINCT p.cpf_func
    FROM avaliacao a, servico_prestado p
    WHERE a.nota <= all (SELECT nota FROM avaliacao) and
    a.id_servico = p.id_servico);

/* Consulta 13 */
SELECT r.*
FROM reserva r, quarto q
WHERE r.id_reserva = q.id_quarto and LOWER(q.vista) = 'lateral'
        and (to_char(r.data_inicio, 'YYYY') = to_char('2000', 'YYYY') or  to_char(r.data_fim, 'YYYY') = to_char('2000', 'YYYY') );
 

/*Consulta 14 */
SELECT q.diaria, q.id_quarto, p.nome
FROM quarto q, venda v, produto p, lavanderia l
WHERE q.id_quarto = v.id_quarto and
        p.id_produto = v.id_produto and 
        p.id_lavanderia = l.id_lavanderia;
        