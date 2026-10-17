CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    RG VARCHAR(20),
    nome VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(150)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    preco DECIMAL(10,2),
    quantidade_estoque INT
);

CREATE TABLE Compra (
    id_compra INT PRIMARY KEY,
    data_compra DATE,
    valor_total DECIMAL(10,2),
    id_cliente INT,
    FOREIGN KEY (id_cliente)
        REFERENCES Cliente(id_cliente)
);

CREATE TABLE Item_Compra (
    id_compra INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    PRIMARY KEY (id_compra, id_produto),
    FOREIGN KEY (id_compra)
        REFERENCES Compra(id_compra),
    FOREIGN KEY (id_produto)
        REFERENCES Produto(id_produto)
);