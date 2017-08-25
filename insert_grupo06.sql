INSERT INTO cliente
VALUES('11111111111', 'Antonio', '02/01/1993', 'M', 'Rua dos Bobos', 1, 'Centro', '12345000', 'antonio@gmail.com');

INSERT INTO cliente
VALUES('22222222211', 'Maria', '06/15/1991', 'F', 'Rua de Baixo', 128, 'Bela Vista', '22333000', 'maria@yahoo.com');

INSERT INTO cliente
VALUES('33333333311', 'Felipe', '10/20/1986', 'M', 'Rua Politico', 97, 'Leste', '78954000', 'felipe@gmail.com');

INSERT INTO cliente
VALUES('44444444411', 'Marcos', '06/06/1996', 'M', 'Rua Sexta 13', 666, 'Centro', '65241000', 'marcos@gmail.com');

INSERT INTO cliente
VALUES('55555555511', 'Ana', '12/07/1984', 'F', 'Rua Chica da Silva', 756, 'Belo Monte', '99421018', 'ana@gmail.com');

INSERT INTO cliente
VALUES('66666666611', 'Farmino', '10/20/1986', 'M', 'Rua Princesa Peach', 64, 'Norte', '16454000', 'farmino@zipmail.com');

INSERT INTO dependente
VALUES('11111111122', '11111111111', 'Junior', '07/30/2008');

INSERT INTO dependente
VALUES('55555555522', '55555555511', 'Clara', '11/18/2004');

INSERT INTO dependente
VALUES('55555555533', '55555555511', 'Amanda', '04/01/1995');

INSERT INTO dependente
VALUES('22222222222', '22222222211', 'Pedro', '03/10/2006');

INSERT INTO dependente
VALUES('22222222233', '22222222211', 'Geraldo', '01/01/2005');

INSERT INTO dependente
VALUES('66666666622', '66666666611', 'Ravesto Mono', '07/31/2004');

INSERT INTO dependente
VALUES('44444444422', '44444444411', 'Laira Crosfiti', '08/18/2010');

INSERT INTO quarto
VALUES(1, 101, 'Simples', 'Mar', 600.00);

INSERT INTO quarto
VALUES(2, 102, 'Duplo Casal', 'Mar', 1000.00);

INSERT INTO quarto
VALUES(3, 103, 'Duplo Twin', 'Serra', 900.00);

INSERT INTO quarto
VALUES(4, 104, 'Triplo', 'Serra', 1200.00);

INSERT INTO quarto
VALUES(5, 201, 'Triplo', 'Montanha', 1300.00);

INSERT INTO quarto
VALUES(6, 202, 'Duplo Casal', 'Montanha', 1100.00);

INSERT INTO quarto
VALUES(7, 203, 'Duplo Twin', 'Mar', 1300.00);

INSERT INTO quarto
VALUES(8, 204, 'Triplo', 'Mar', 1500.00);

INSERT INTO reserva
VALUES('08/21/2017', '08/30/2017', '11111111111', 1);

INSERT INTO reserva
VALUES('04/16/2017', '04/24/2017', '22222222211', 2);

INSERT INTO reserva
VALUES('07/01/2017', '07/10/2017', '33333333311', 3);

INSERT INTO reserva
VALUES('08/17/2016', '08/24/2016', '55555555511', 4);

INSERT INTO reserva
VALUES('01/11/2014', '01/20/2014', '11111111111', 5);

INSERT INTO servico
VALUES(1, 300.00);

INSERT INTO servico
VALUES(2, 350.00);

INSERT INTO servico
VALUES(3, 400.00);

INSERT INTO servico
VALUES(4, 500.00);

INSERT INTO servico
VALUES(5, 750.00);

INSERT INTO servico
VALUES(6, 200.00);

INSERT INTO servico
VALUES(7, 300.00);

INSERT INTO servico
VALUES(8, 220.00);

INSERT INTO servico
VALUES(9, 500.00);

INSERT INTO servico
VALUES(10, 750.00);

INSERT INTO servico
VALUES(11, 50.00);

INSERT INTO servico
VALUES(12, 20.00);

INSERT INTO servico
VALUES(13, 31.00);

INSERT INTO servico
VALUES(14, 230.00);

INSERT INTO servico
VALUES(15, 50.00);

INSERT INTO servico
VALUES(16, 75.00);

INSERT INTO servico
VALUES(17, 10.00);

INSERT INTO servico
VALUES(18, 20.00);

INSERT INTO servico
VALUES(19, 300.00);

INSERT INTO servico
VALUES(20, 20.00);


INSERT INTO funcionario
VALUES(12345678900, 'Alfredo', 1800.00, '03/02/1974', 'Porteiro');

INSERT INTO funcionario
VALUES(12345678901, 'Maria das Neves', 1500.00, '05/22/1976', 'Lavadeira');

INSERT INTO funcionario
VALUES(12345678902, 'Aecio Never', 750.00, '03/02/1974', 'Porteiro');

INSERT INTO funcionario
VALUES(12345678903, 'Maria Dolores', 1500.00, '04/05/1987', 'Lavadeira');

INSERT INTO funcionario
VALUES(12345678904, 'Luciana Neta', 1800.00, '08/14/1994', 'Recepcionista');

INSERT INTO funcionario
VALUES(12345678905, 'Jarbas Pai', 1800.00, '09/10/1995', 'Recepcionista');

INSERT INTO avaliacao
VALUES (1, 44444444411, 5, 'Mais ou menos...');

INSERT INTO avaliacao
VALUES (1, 66666666611, 9, 'Muito bom.');

INSERT INTO avaliacao
VALUES (2, 66666666611, 10, 'Minhas roupas ficaram fofinhas, muito bom.');

INSERT INTO avaliacao
VALUES (2, 44444444411, 7, 'Funcionaria antipatica.');

INSERT INTO avaliacao
VALUES (3, 55555555511, 1, 'H-O-R-R-I-V-E-L');

INSERT INTO avaliacao
VALUES (3, 11111111111, 4, 'Deveras mediocre');

INSERT INTO avaliacao
VALUES (4, 66666666611, 1, 'Nem');

INSERT INTO servico_prestado
VALUES(12345678900, 1);

INSERT INTO servico_prestado
VALUES(12345678902, 1);

INSERT INTO servico_prestado
VALUES(12345678901, 2);

INSERT INTO servico_prestado
VALUES(12345678903, 2);

INSERT INTO servico_prestado
VALUES(12345678904, 3);

INSERT INTO servico_prestado
VALUES(12345678905, 3);

INSERT INTO servico_prestado
VALUES(12345678903, 4);

INSERT INTO bar
VALUES(1);

INSERT INTO bar
VALUES(6);

INSERT INTO bar
VALUES(7);

INSERT INTO bar
VALUES(8);

INSERT INTO bar
VALUES(9);

INSERT INTO restaurante
VALUES(2);

INSERT INTO restaurante
VALUES(3);

INSERT INTO restaurante
VALUES(10);

INSERT INTO restaurante
VALUES(11);

INSERT INTO restaurante
VALUES(12);

INSERT INTO frigobar
VALUES(4);

INSERT INTO frigobar
VALUES(13);

INSERT INTO frigobar
VALUES(14);

INSERT INTO frigobar
VALUES(15);

INSERT INTO frigobar
VALUES(16);

INSERT INTO lavanderia
VALUES(5);

INSERT INTO lavanderia
VALUES(17);

INSERT INTO lavanderia
VALUES(18);

INSERT INTO lavanderia
VALUES(19);

INSERT INTO lavanderia
VALUES(20);

INSERT INTO produto(id_produto, nome, descricao, valor, id_rest, id_bar)
VALUES(1, 'cafe', 'quente e preto', 2.50,2 ,1);

INSERT INTO produto(id_produto, nome, descricao, valor, id_rest, id_frigobar)
VALUES(2, 'refrigerante', 'coca-cola gelada', 5.00,10 ,4);

INSERT INTO produto
VALUES(3, 'lavar roupa/ gelo/ almoçar/ cerveja', 'pacote completo', 500.00, 5, 4, 3, 6);

INSERT INTO produto(id_produto, nome, descricao, valor, id_bar, id_frigobar)
VALUES(4, 'cerveja', 'gelada', 4.00, 6, 4);

INSERT INTO produto(id_produto, nome, descricao, valor, id_lavanderia)
VALUES(5, 'amaciante', 'cheroso', 3.00, 20);
    
INSERT INTO venda
VALUES(1, 1, 5, '10/20/2016');
    
INSERT INTO venda
VALUES(2, 3, 2, '05/06/2014');
 
INSERT INTO venda
VALUES(3, 4, 3, '01/21/2017');
    
INSERT INTO venda
VALUES(4, 5, 7, '07/17/2013');

INSERT INTO venda
VALUES(5, 6, 8, '10/07/2017');

INSERT INTO venda
VALUES(2, 1, 20, '11/08/2007');

INSERT INTO equipamento
VALUES('tv', 1);

INSERT INTO equipamento
VALUES('ar condicionado', 5);

INSERT INTO equipamento
VALUES('ar condicionado', 3);

INSERT INTO equipamento
VALUES('tv', 8);

INSERT INTO equipamento
VALUES('som', 2);











