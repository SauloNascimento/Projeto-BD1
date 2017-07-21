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
    CONSTRAINT responsavel FOREIGN KEY (CPF_responsavel) references CLiente(CPF) ON DELETE CASCADE
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
    id_serv int,
    valor NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id_serv),
    CONSTRAINT checkValorServ CHECK (valor>=0)
);

CREATE TABLE Produto(
    id_prod int,
    nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    id_servico int NOT NULL,
    PRIMARY KEY (id_prod),
    CONSTRAINT servicoCE FOREIGN KEY (id_servico) references Servico(id_serv),
    CONSTRAINT checkValorProd CHECK (valor>=0)
);


CREATE TABLE Lavanderia(
    id_lavanderia int,
    PRIMARY KEY(id_lavanderia),
    CONSTRAINT lavanderiaCE FOREIGN KEY (id_lavanderia) references Servico(id_serv)
)

CREATE TABLE Passeio_Turistico(
    id_passeio int,
    PRIMARY KEY(id_passeio),
    CONSTRAINT passeioCE FOREIGN KEY (id_passeio) references Servico(id_serv)
)

CREATE TABLE Frigobar(
    id_frigobar int,
    PRIMARY KEY(id_frigobar),
    CONSTRAINT frigobarCE FOREIGN KEY (id_frigobar) references Servico(id_serv)
)


CREATE SEQUENCE id_Quarto_Seq;
CREATE SEQUENCE id_NF_Seq;
CREATE SEQUENCE id_Prod_Seq;

