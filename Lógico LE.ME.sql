/* L�gico LE.ME: */

CREATE TABLE CLIENTE (
    FK_telefone VARCHAR,
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR,
    cpf VARCHAR,
    dt_nascimento VARCHAR,
    email VARCHAR,
    uf VARCHAR,
    cidade VARCHAR,
    cep VARCHAR UNIQUE,
    numero VARCHAR,
    rua VARCHAR
);

CREATE TABLE CIDADE_DESTINO_REGIAO_DESTINO (
    id_cidade VARCHAR PRIMARY KEY,
    FK_RESERVA_id_reserva INTEGER,
    nome VARCHAR,
    preco VARCHAR,
    tipo_destino VARCHAR
);

CREATE TABLE PEDIDO_RESERVA_PAGAMENTO (
    id_reserva VARCHAR PRIMARY KEY,
    FK_CLIENTE_id_cliente INTEGER,
    dt_pedido VARCHAR,
    dt_saida VARCHAR,
    dt_entrada VARCHAR,
    qt_acompanhantes VARCHAR,
    qt_quartos VARCHAR,
    dt_pagamento VARCHAR,
    tipo_pagamento VARCHAR
);

CREATE TABLE INTERNACIONAL (
    id_internacional INTEGER,
    FK_REGIAO_DESTINO_id_regiao INTEGER,
    PRIMARY KEY (id_internacional, FK_REGIAO_DESTINO_id_regiao)
);

CREATE TABLE NACIONAL (
    id_nacional INTEGER,
    FK_REGIAO_DESTINO_id_regiao INTEGER,
    PRIMARY KEY (id_nacional, FK_REGIAO_DESTINO_id_regiao)
);

CREATE TABLE telefone (
    telefone_PK VARCHAR NOT NULL PRIMARY KEY,
    FK_id_cliente INTEGER,
    ddd VARCHAR,
    telefone VARCHAR UNIQUE
);
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_2
    FOREIGN KEY (FK_telefone)
    REFERENCES telefone (telefone_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE CIDADE_DESTINO_REGIAO_DESTINO ADD CONSTRAINT FK_CIDADE_DESTINO_REGIAO_DESTINO_2
    FOREIGN KEY (FK_RESERVA_id_reserva)
    REFERENCES ??? (???);
 
ALTER TABLE PEDIDO_RESERVA_PAGAMENTO ADD CONSTRAINT FK_PEDIDO_RESERVA_PAGAMENTO_2
    FOREIGN KEY (FK_CLIENTE_id_cliente)
    REFERENCES CLIENTE (id_cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE INTERNACIONAL ADD CONSTRAINT FK_INTERNACIONAL_2
    FOREIGN KEY (FK_REGIAO_DESTINO_id_regiao)
    REFERENCES ??? (???);
 
ALTER TABLE NACIONAL ADD CONSTRAINT FK_NACIONAL_2
    FOREIGN KEY (FK_REGIAO_DESTINO_id_regiao)
    REFERENCES ??? (???);
 
ALTER TABLE telefone ADD CONSTRAINT FK_telefone_3
    FOREIGN KEY (FK_id_cliente???)
    REFERENCES ??? (???);