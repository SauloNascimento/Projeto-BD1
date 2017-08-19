CREATE TABLE Cliente(
    CPF char(11),
    nome VARCHAR(30) NOT NULL,
    data_nascimento DATE,
    sexo char,
    rua VARCHAR(30),
    numero VARCHAR(5),
    bairro VARCHAR(20),
    cep char(8),
    email VARCHAR(30),
    PRIMARY KEY (CPF)
);

CREATE TABLE Funcionario(
    CPF char(11),
    nome VARCHAR(30) NOT NULL,
    data_nascimento DATE,
    salario NUMERIC(10,2) NOT NULL,
    funcao VARCHAR(30) NOT NULL,
    PRIMARY KEY (CPF),
    CONSTRAINT checkSalario CHECK (salario>0)
);

CREATE TABLE Quarto(
    id int,
    numero VARCHAR(5) NOT NULL,
    tipo VARCHAR(10),
    vista VARCHAR(10),
    equipamentos VARCHAR(30),
    diaria NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT checkDiaria CHECK (diaria>=0)
);

CREATE TABLE Dependente(
    CPF char(11),
    CPF_responsavel char(11) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    data_nascimento DATE,
    PRIMARY KEY (CPF),
    CONSTRAINT responsavel FOREIGN KEY (CPF_responsavel) references Cliente(CPF) ON DELETE CASCADE
);

CREATE TABLE Nota_Fiscal(
    id_nota int,
    id_quarto int NOT NULL,
    CPF_cliente char(11) NOT NULL,
    dt_in DATE NOT NULL,
    dt_out DATE NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id_nota),
    CONSTRAINT checkValorNF CHECK (valor>=0),
    CONSTRAINT hospede FOREIGN KEY (CPF_cliente) references Cliente(CPF),
    CONSTRAINT aposento FOREIGN KEY (id_quarto) references Quarto(id)
);

CREATE TABLE Servico(
    id int,
    valor NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT checkValorServ CHECK (valor>=0)
);

CREATE TABLE Produto(
    id_prod int,
    nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    id_servico int NOT NULL,
    PRIMARY KEY (id_prod),
    CONSTRAINT servicoCE FOREIGN KEY (id_servico) references Servico(id),
    CONSTRAINT checkValorProd CHECK (valor>=0)
);


CREATE TABLE Lavanderia(
    id int,
    PRIMARY KEY(id),
    CONSTRAINT lavanderiaCE FOREIGN KEY (id) references Servico(id)
);

CREATE TABLE Passeio_Turistico(
    id int,
    PRIMARY KEY(id),
    CONSTRAINT passeioCE FOREIGN KEY (id) references Servico(id)
);

CREATE TABLE Frigobar(
    id int,
    PRIMARY KEY(id),
    CONSTRAINT frigobarCE FOREIGN KEY (id) references Servico(id)
);

CREATE TABLE Restaurante(
    id int,
    PRIMARY KEY(id),
    CONSTRAINT restauranteCE FOREIGN KEY(id) references Servico(id)
);

CREATE TABLE Estacionamento(
    id int,
    PRIMARY KEY(id),
    CONSTRAINT estacionamentoCE FOREIGN KEY (id) references Servico(id)
);

CREATE TABLE Bar(
    id int,
    PRIMARY KEY(id),
    CONSTRAINT barCE FOREIGN KEY (id) references Servico(id)
);

CREATE TABLE Reserva(
	CPF_cliente	char(11) NOT NULL,
	id_quarto	int NOT NULL,
	data_inicio	DATE,
	data_fim	DATE,

	PRIMARY KEY (CPF_cliente,id_quarto),

	CONSTRAINT fk_Cliente FOREIGN KEY (CPF_cliente) references Cliente(CPF),
	CONSTRAINT fk_Quarto FOREIGN KEY (id_quarto) references Quarto(id)

);

CREATE TABLE Hospedagem(
	CPF_cliente	char(11) NOT NULL,
	id_quarto	int NOT NULL,
	data_inicio	DATE,
	data_fim	DATE,

	PRIMARY KEY (CPF_cliente,id_quarto),

	CONSTRAINT clienteH FOREIGN KEY (CPF_cliente) references Cliente(CPF),
	CONSTRAINT quartoH FOREIGN KEY (id_quarto) references Quarto(id)
);

CREATE TABLE Avaliacao(
	CPF_cliente	char(11) NOT NULL ,
	id_servico	int NOT NULL ,
	nota		int CHECK(nota >= 0 AND nota <= 10),
	comentario	VARCHAR(255),
	
	PRIMARY KEY (CPF_cliente,id_servico),

	CONSTRAINT clienteA FOREIGN KEY (CPF_cliente) references Cliente(CPF),
	CONSTRAINT servicoA FOREIGN KEY (id_servico) references Servico(id)
	 
);

CREATE TABLE Venda(
    CPF_cliente char(11),
    id_produto integer not null,
    data DATE,
    qualidade varchar2(8),
    PRIMARY KEY(CPF_cliente),
    
    CONSTRAINT clienteCE FOREIGN KEY (CPF_cliente) references Cliente(CPF),
    CONSTRAINT produtoCE FOREIGN KEY (id_produto) references Produto(id_prod)
);

CREATE TABLE Telefone_Cliente(
    CPF_cliente char(11),
    telefone VARCHAR(15),
    PRIMARY KEY(CPF_cliente, telefone),
    CONSTRAINT clienteDonoCE FOREIGN KEY (CPF_cliente) references Cliente(CPF)
);

CREATE TABLE Prestacao(
    CPF_funcionario char(11),
    id_servico int,
    
    PRIMARY KEY( CPF_funcionario, id_servico),
    CONSTRAINT funcionarioCE FOREIGN KEY (CPF_funcionario) references Cliente(CPF),
    CONSTRAINT servicoPrestadoCE FOREIGN KEY (id_servico) references Servico(id)
);

CREATE SEQUENCE id_Quarto_Seq;
CREATE SEQUENCE id_NF_Seq;
CREATE SEQUENCE id_Prod_Seq;