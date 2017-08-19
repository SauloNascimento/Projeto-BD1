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
