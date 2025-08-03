CREATE TABLE entrega_obra_ciencia_cessao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_condominio VARCHAR(100),
    cnpj_condominio VARCHAR(18),

    logradouro_condominio VARCHAR(100),
    numero_condominio VARCHAR(10),
    bairro_condominio VARCHAR(100),
    cidade_condominio VARCHAR(100),
    estado_condominio CHAR(2),
    cep_condominio VARCHAR(9),

    organizacao VARCHAR(100),
    cnpj_cliente VARCHAR(18),

    logradouro_lead VARCHAR(100),
    numero_lead VARCHAR(10),
    bairro_lead VARCHAR(100),
    cidade_lead VARCHAR(100),
    estado_lead CHAR(2),
    cep_lead VARCHAR(9),

    data_local DATE,
    valor_total_contrato DECIMAL(15,2),
    objeto TEXT,
    total_parcelas_pendentes INT
);


CREATE TABLE parcelas_contrato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entrega_obra_id INT,
    data_vencimento DATE,
    valor_parcela DECIMAL(15,2),
    FOREIGN KEY (entrega_obra_id) REFERENCES entrega_obra_ciencia_cessao(id)
);
