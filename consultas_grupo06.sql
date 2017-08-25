/* Consulta 01 Liste a quantidade de vendas por quarto*/
SELECT q.nome, COUNT(*) AS venda
FROM quarto q, venda v 
WHERE q.id_quarto = v.id_quarto 
GROUP BY q.nome

/* Consulta 2. Quais clientes reservaram quartos com equipamentos de “ar condicionado”?*/
SELECT c.nome
FROM cliente c 
WHERE c.nome IN 
	(SELECT cliente 
     FROM quarto q JOIN equipamento eq
	    ON q.id_quarto  = eq.id_quarto 
	    WHERE eq.equipamento = 'ar condicionado');
    
    
/*Consulta 5. Crie uma view que lista os dependentes e suas titulares do sexo feminino*/
CREATE VIEW dependementeTitularesFemininos AS 
	SELECT * FROM dependente d
	WHERE  d.nome IN 
	(SELECT dependentes FROM (SELECT , COUNT(*) 
		FROM dependente dep WHERE dep.titular = "feminino"
		GROUP BY dep.titular));

/*Consulta 6.  Qual produto está associado a todos os serviços?*/
SELECT p.nome
FROM produto p
GROUP BY p.nome
HAVING COUNT(*) >= ALL
    (SELECT COUNT(*)
        FROM servico GROUP BY p.nome)


/* Consulta 07 */
SELECT vista, COUNT(*)
FROM quarto
GROUP BY vista;

/* Consulta 08 */
SELECT c.*
FROM cliente c, dependente d
WHERE c.sexo = 'M' and
    c.email LIKE '%gmail%' and
    d.titular = c.cpf;

/* Consulta 10 */
SELECT c.*
FROM cliente c, reserva r
WHERE c.cpf = r.cpf_cliente and
    to_char(r.data_inicio, 'YYYY') = to_char(sysdate, 'YYYY')
ORDER BY data_nascimento
FETCH FIRST 1 ROWS ONLY;

/* Consulta 11 */
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
        