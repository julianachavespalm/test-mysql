# ************************************************************
# Resposta ao Desafio MySQL
# Arquivo: resposta_desafio.sql
#
# Este arquivo contém a resposta para o desafio MySQL "test-mysql.sql".
# A consulta retorna todos os clientes, a cor de suas casas, seus bairros e seus carros.
# Utiliza JOINs para unir as informações das tabelas cliente, casa, bairro e carro.
#
# Autor: Juliana Chaves Palm
# Contato: julianachavespalm@gmail.com
# Data: 11/11/2023
#
# ************************************************************

SELECT 
    c.nome AS nome_cliente,
    c.sobrenome AS sobrenome_cliente,
    casa.cor AS cor_casa,
    bairro.nome AS nome_bairro,
    carro.modelo AS modelo_carro
FROM 
    cliente c
JOIN 
    casa ON c.id_cliente = casa.fk_cliente
JOIN 
    bairro ON casa.fk_bairro = bairro.id_bairro
JOIN 
    carro ON c.id_cliente = carro.fk_cliente;
