CREATE DATABASE IF NOT EXISTS sistema_produtos;
USE sistema_produtos;

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO produtos (nome, categoria, preco) VALUES
('Notebook', 'Eletrônicos', 2500.00),
('Smartphone', 'Eletrônicos', 1200.00),
('Fogão', 'Eletrodomésticos', 800.00),
('Cadeira Gamer', 'Móveis', 400.00),
('Micro-ondas', 'Eletrodomésticos', 500.00),
('Tablet', 'Eletrônicos', 600.00),
('Smartwatch', 'Eletrônicos', 700.00),
('TV LED', 'Eletrônicos', 1500.00),
('Máquina de Lavar', 'Eletrodomésticos', 1200.00),
('Liquidificador', 'Eletrodomésticos', 150.00),
('Sofá Retrátil', 'Móveis', 1800.00),
('Escrivaninha', 'Móveis', 350.00),
('Geladeira', 'Eletrodomésticos', 3000.00),
('Cafeteira', 'Eletrodomésticos', 250.00),
('Teclado Mecânico', 'Eletrônicos', 300.00);

SELECT * FROM produtos;