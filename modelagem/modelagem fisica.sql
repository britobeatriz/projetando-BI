CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY,
	NOME VARCHAR(30) NOT NULL,
	SOBRENOME VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(60) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	NASCIMENTO DATE NOT NULL
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY,
	RUA VARCHAR(100) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	REGIAO VARCHAR(20) NOT NULL,
	ID_CLIENTE INT UNIQUE
);

CREATE TABLE VENDEDOR(
	IDVENDEDOR INT PRIMARY KEY,
	NOME VARCHAR(30) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL
);

CREATE TABLE CATEGORIA(
	IDCATEAGORIA INT PRIMARY KEY,
	NOME VARCHAR(50) NOT NULL
);

CREATE TABLE FORNECEDOR(
	IDFORNECEDOR INT PRIMARY KEY,
	NOME VARCHAR(50)
);

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY,
	PRODUTO VARCHAR(100) NOT NULL,
	VALOR NUMERIC(10,2) NOT NULL,
	CUSTO_MEDIO NUMERIC(10,2),
	ID_CATEGORIA INT,
	ID_FORNECEDOR INT
);

CREATE TABLE FORMA_PAGAMENTO(
	IDFORMA INT PRIMARY KEY,
	FORMA VARCHAR(50) NOT NULL
);

CREATE TABLE ITEM_NOTA(
	IDITEMNOTA INT PRIMARY KEY,
	ID_PRODUTO INT,
	ID_NOTA_FISCAL INT,
	QUANTIDADE INT,
	TOTAL NUMERIC(10,2)
);

CREATE TABLE NOTA_FISCAL(
	IDNOTA INT PRIMARY KEY,
	DATA DATE,
	TOTAL NUMERIC(10,2),
	ID_FORMA INT,
	ID_CLIENTE INT,
	ID_VENDEDOR INT
);