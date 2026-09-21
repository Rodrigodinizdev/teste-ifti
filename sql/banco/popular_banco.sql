USE LocadoraIfti;
GO

SET DATEFORMAT ymd;
GO
-- ===================================================
-- INSERTS: Banco LocadoraVeiculos
-- ===================================================

-- Filial
INSERT INTO Filial (RazaoSocial, CNPJ, Telefone, Email, Logradouro, Numero, Bairro, Cidade, UF) VALUES ('VelozCar Locadora Filial João Pessoa LTDA', '45333147893288', '(83) 95586-1464', 'filial.joãopessoa@velozcar.com.br', 'Largo Miguel da Costa', '2046', 'Das Industrias I', 'João Pessoa', 'PB');
INSERT INTO Filial (RazaoSocial, CNPJ, Telefone, Email, Logradouro, Numero, Bairro, Cidade, UF) VALUES ('VelozCar Locadora Filial Recife LTDA', '23862551184873', '(21) 94140-2177', 'filial.recife@velozcar.com.br', 'Lago Melo', '341', 'Saudade', 'Recife', 'PE');
INSERT INTO Filial (RazaoSocial, CNPJ, Telefone, Email, Logradouro, Numero, Bairro, Cidade, UF) VALUES ('VelozCar Locadora Filial São Paulo LTDA', '38798113511971', '(71) 92744-5455', 'filial.sãopaulo@velozcar.com.br', 'Feira de Casa Grande', '1831', 'Satelite', 'São Paulo', 'SP');
INSERT INTO Filial (RazaoSocial, CNPJ, Telefone, Email, Logradouro, Numero, Bairro, Cidade, UF) VALUES ('VelozCar Locadora Filial Belo Horizonte LTDA', '81580699833976', '(11) 97296-1209', 'filial.belohorizonte@velozcar.com.br', 'Viaduto de Montenegro', '153', 'Acaba Mundo', 'Belo Horizonte', 'MG');
INSERT INTO Filial (RazaoSocial, CNPJ, Telefone, Email, Logradouro, Numero, Bairro, Cidade, UF) VALUES ('VelozCar Locadora Filial Fortaleza LTDA', '07056148970712', '(31) 99702-2504', 'filial.fortaleza@velozcar.com.br', 'Alameda Maysa Cavalcanti', '80', 'Vila Tirol', 'Fortaleza', 'CE');

-- CategoriaVeiculo
INSERT INTO CategoriaVeiculo (Nome, ValorDiaria) VALUES ('Econômico', 89.9);
INSERT INTO CategoriaVeiculo (Nome, ValorDiaria) VALUES ('Intermediário', 129.9);
INSERT INTO CategoriaVeiculo (Nome, ValorDiaria) VALUES ('SUV', 189.9);
INSERT INTO CategoriaVeiculo (Nome, ValorDiaria) VALUES ('Luxo', 349.9);
INSERT INTO CategoriaVeiculo (Nome, ValorDiaria) VALUES ('Picape', 219.9);
INSERT INTO CategoriaVeiculo (Nome, ValorDiaria) VALUES ('Van', 259.9);

-- StatusVeiculo
INSERT INTO StatusVeiculo (Nome) VALUES ('Disponível');
INSERT INTO StatusVeiculo (Nome) VALUES ('Alugado');
INSERT INTO StatusVeiculo (Nome) VALUES ('Em Manutenção');
INSERT INTO StatusVeiculo (Nome) VALUES ('Reservado');
INSERT INTO StatusVeiculo (Nome) VALUES ('Inativo');

-- StatusAluguel
INSERT INTO StatusAluguel (Nome) VALUES ('Reservado');
INSERT INTO StatusAluguel (Nome) VALUES ('Em Andamento');
INSERT INTO StatusAluguel (Nome) VALUES ('Finalizado');
INSERT INTO StatusAluguel (Nome) VALUES ('Cancelado');
INSERT INTO StatusAluguel (Nome) VALUES ('Atrasado');

-- TipoPagamento
INSERT INTO TipoPagamento (Nome) VALUES ('Cartão de Crédito');
INSERT INTO TipoPagamento (Nome) VALUES ('Cartão de Débito');
INSERT INTO TipoPagamento (Nome) VALUES ('Pix');
INSERT INTO TipoPagamento (Nome) VALUES ('Dinheiro');
INSERT INTO TipoPagamento (Nome) VALUES ('Boleto');

-- StatusPagamento
INSERT INTO StatusPagamento (Nome) VALUES ('Pendente');
INSERT INTO StatusPagamento (Nome) VALUES ('Aprovado');
INSERT INTO StatusPagamento (Nome) VALUES ('Recusado');
INSERT INTO StatusPagamento (Nome) VALUES ('Estornado');
INSERT INTO StatusPagamento (Nome) VALUES ('Cancelado');

-- Veiculo
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (1, 4, 1, 'Chevrolet', 'Onix', 'YNS1B71', 2019, 'Branco');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 1, 1, 'Chevrolet', 'Tracker', 'CVO2M70', 2018, 'Prata');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (5, 2, 1, 'Chevrolet', 'S10', 'GYC3F29', 2018, 'Branco');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (1, 2, 3, 'Fiat', 'Mobi', 'QYM7P74', 2020, 'Vermelho');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 1, 2, 'Fiat', 'Pulse', 'TNJ9I46', 2021, 'Prata');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (5, 1, 2, 'Fiat', 'Toro', 'PCB1X28', 2018, 'Branco');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (1, 1, 2, 'Volkswagen', 'Polo', 'GVC7F23', 2023, 'Cinza');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 3, 2, 'Volkswagen', 'Nivus', 'PRW7G93', 2021, 'Preto');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (5, 3, 4, 'Volkswagen', 'Amarok', 'CQK6G45', 2020, 'Azul');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (2, 4, 3, 'Volkswagen', 'Voyage', 'YYU9M74', 2022, 'Cinza');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (1, 3, 2, 'Hyundai', 'HB20', 'XRW5C45', 2023, 'Branco');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 2, 1, 'Hyundai', 'Creta', 'LZW1G85', 2022, 'Vermelho');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (2, 5, 3, 'Toyota', 'Corolla', 'SBQ1X85', 2018, 'Azul');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 2, 1, 'Toyota', 'Corolla Cross', 'ZFU6B96', 2022, 'Azul');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (5, 5, 2, 'Toyota', 'Hilux', 'MCW5C56', 2021, 'Azul');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (2, 5, 3, 'Honda', 'City', 'ABO3P61', 2024, 'Vermelho');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 1, 2, 'Honda', 'HR-V', 'ADB7Y26', 2018, 'Azul');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 3, 4, 'Jeep', 'Renegade', 'TIU3R95', 2018, 'Branco');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 1, 2, 'Jeep', 'Compass', 'XMQ2F71', 2019, 'Vermelho');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (4, 5, 4, 'BMW', '320i', 'XKK8H34', 2021, 'Vermelho');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (4, 4, 2, 'Mercedes-Benz', 'Classe C', 'MXV9Z35', 2021, 'Azul');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (4, 1, 1, 'Audi', 'A4', 'ZTU5U95', 2020, 'Preto');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (1, 4, 1, 'Renault', 'Kwid', 'QQL4I55', 2024, 'Prata');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 2, 1, 'Renault', 'Duster', 'VEI9O47', 2020, 'Cinza');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (2, 2, 3, 'Nissan', 'Versa', 'DPS2I47', 2019, 'Branco');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (3, 3, 2, 'Nissan', 'Kicks', 'NNQ9T64', 2023, 'Cinza');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (1, 1, 3, 'Peugeot', '208', 'OZR6P72', 2021, 'Prata');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (2, 4, 2, 'Citroën', 'C4 Cactus', 'RNT5A86', 2020, 'Preto');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (6, 4, 2, 'Fiat', 'Ducato', 'OVS1S19', 2021, 'Preto');
INSERT INTO Veiculo (IdCategoria, IdFilial, IdStatusVeiculo, Marca, Modelo, Placa, AnoFabricacao, Cor) VALUES (6, 3, 3, 'Renault', 'Master', 'ITD6L28', 2018, 'Cinza');

-- Cliente
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Mateus Montenegro', '22079455142', '(11) 96393-7986', 'vcirino@terra.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Isaac Borges', '07918633907', '(81) 97953-1357', 'sophie73@uol.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Matheus Barbosa', '10057746813', '(71) 96942-9492', 'costaluna@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Eduardo Brito', '39092283454', '(83) 99935-9768', 'bellaborges@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Maria Eduarda Barros', '18357731877', '(51) 97722-8571', 'da-matalivia@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Joaquim Ferreira', '15217348545', '(61) 96988-6155', 'vargasisis@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Thales Câmara', '30008390613', '(51) 94736-8976', 'vguerra@yahoo.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Hadassa Albuquerque', '34531579972', '(51) 98925-7703', 'aragaomaya@gmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Elisa Teixeira', '22000205748', '(61) 99332-2491', 'qcampos@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Mariana Araújo', '46819702572', '(81) 93671-5412', 'psales@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Juan da Rosa', '41584024473', '(51) 95152-6570', 'almeidamaria-vitoria@terra.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Kamilly Oliveira', '20872006636', '(11) 93022-6069', 'araujomaria-luisa@yahoo.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Benjamim Sampaio', '15439738461', '(11) 91423-2918', 'da-costafelipe@live.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Ian Gomes', '89024617492', '(21) 99636-3474', 'icaldeira@uol.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Vicente Costela', '71598366660', '(21) 94425-1608', 'castrolucas@yahoo.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Benicio Aragão', '93661182895', '(85) 99265-9491', 'melissavargas@outlook.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Lara Mendonça', '22472181106', '(31) 97437-5833', 'gustavo79@outlook.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Ana Carolina Nogueira', '28370676645', '(83) 92968-4784', 'alicia73@gmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Mariah Barbosa', '40891441763', '(51) 96196-2221', 'almeidajoao-miguel@gmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Fernando Ribeiro', '04654404451', '(21) 91316-9150', 'moraesnicolas@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Laís Cavalcante', '87156096438', '(11) 94600-1214', 'rioshadassa@bol.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Maria Clara Mendonça', '67066594100', '(71) 94752-7268', 'pcorreia@outlook.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Theodoro da Paz', '84036578568', '(85) 91373-7892', 'mouraayla@terra.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Mathias Vasconcelos', '96630901174', '(21) 96539-6596', 'emilly78@outlook.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Mirella Nascimento', '43782528559', '(83) 93599-7858', 'yda-cunha@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Ana Luiza Barros', '26662098189', '(51) 93212-4474', 'gustavo22@terra.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Carlos Eduardo Cunha', '98226128053', '(21) 97373-1334', 'mouraaugusto@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('José Miguel da Mata', '09778771094', '(11) 98808-5482', 'carolinearaujo@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Fernanda Borges', '00192715416', '(83) 99686-4731', 'emanuel57@gmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Calebe Machado', '21175914467', '(41) 96069-2888', 'mayaguerra@icloud.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Eduardo Lopes', '77120410057', '(51) 92493-9902', 'camargobenicio@outlook.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('José Andrade', '73934786518', '(83) 99968-3480', 'thomas28@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Davi Miguel Aparecida', '22287839125', '(21) 93865-6366', 'tmoraes@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Luiz Henrique Sousa', '94060655219', '(85) 94799-1563', 'icostela@terra.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Aylla Melo', '56351550090', '(83) 93888-9983', 'mateusmendonca@outlook.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Helena Sousa', '50072642147', '(81) 95217-8845', 'isadorasampaio@hotmail.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Otávio Viana', '82076813717', '(11) 98724-6415', 'bianca56@uol.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Milena Montenegro', '84529767878', '(71) 99976-3907', 'paulo45@uol.com.br');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Levi Ferreira', '66942975347', '(11) 98964-9592', 'viniciusmoura@live.com');
INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES ('Ana da Rosa', '59014863936', '(85) 99584-2435', 'sda-costa@hotmail.com');

-- Aluguel
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (16, 11, 1, 3, '2026-06-15', '2026-06-27', '2026-06-27', 1558.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (11, 15, 4, 5, '2026-08-17', '2026-08-24', '2026-08-25', 629.3, 44.95);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (20, 10, 4, 2, '2026-08-24', '2026-08-31', NULL, 2449.3, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (11, 1, 5, 3, '2026-08-30', '2026-09-08', '2026-09-08', 809.1, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (17, 23, 2, 4, '2026-09-05', '2026-09-16', NULL, 2088.9, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (26, 27, 2, 3, '2026-05-26', '2026-06-04', '2026-06-04', 1709.1, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (5, 4, 3, 2, '2026-08-25', '2026-08-28', NULL, 569.7, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (14, 1, 2, 3, '2026-07-10', '2026-07-22', '2026-07-22', 2278.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (27, 25, 5, 3, '2026-06-06', '2026-06-16', '2026-06-16', 899.0, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (11, 2, 4, 3, '2026-09-03', '2026-09-05', '2026-09-05', 179.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (23, 19, 5, 3, '2026-07-12', '2026-07-21', '2026-07-21', 809.1, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (11, 7, 2, 2, '2026-05-04', '2026-05-13', NULL, 809.1, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (30, 32, 4, 3, '2026-09-18', '2026-09-29', '2026-09-29', 2858.9, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (13, 7, 3, 3, '2026-08-25', '2026-08-31', '2026-08-31', 779.4, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (10, 15, 1, 3, '2026-06-04', '2026-06-07', '2026-06-07', 389.7, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (13, 32, 2, 3, '2026-09-15', '2026-09-22', '2026-09-22', 909.3, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (27, 19, 5, 4, '2026-07-20', '2026-07-22', NULL, 179.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (10, 4, 1, 3, '2026-06-17', '2026-06-27', '2026-06-27', 1299.0, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (3, 11, 1, 3, '2026-05-01', '2026-05-13', '2026-05-13', 2638.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (11, 17, 2, 3, '2026-05-07', '2026-05-10', '2026-05-10', 269.7, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (28, 15, 5, 5, '2026-06-13', '2026-06-25', '2026-06-26', 1558.8, 64.95);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (5, 4, 3, 5, '2026-06-10', '2026-06-21', '2026-06-23', 2088.9, 189.9);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (23, 13, 5, 3, '2026-07-04', '2026-07-10', '2026-07-10', 539.4, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (15, 19, 5, 3, '2026-05-19', '2026-05-21', '2026-05-21', 439.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (27, 24, 4, 5, '2026-07-11', '2026-07-18', '2026-07-21', 629.3, 134.85);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (2, 33, 1, 2, '2026-09-16', '2026-09-26', NULL, 1899.0, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (1, 30, 1, 3, '2026-05-09', '2026-05-11', '2026-05-11', 179.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (29, 3, 2, 4, '2026-06-23', '2026-07-01', NULL, 2079.2, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (7, 17, 4, 3, '2026-08-25', '2026-09-02', '2026-09-02', 719.2, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (3, 10, 1, 3, '2026-07-26', '2026-08-06', '2026-08-06', 2418.9, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (20, 9, 5, 4, '2026-05-06', '2026-05-08', NULL, 699.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (15, 34, 3, 3, '2026-07-09', '2026-07-17', '2026-07-17', 1759.2, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (20, 7, 1, 2, '2026-05-22', '2026-05-25', NULL, 1049.7, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (28, 16, 4, 5, '2026-07-09', '2026-07-14', '2026-07-15', 649.5, 64.95);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (13, 17, 5, 3, '2026-08-12', '2026-08-24', '2026-08-24', 1558.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (1, 5, 5, 5, '2026-06-20', '2026-06-27', '2026-06-28', 629.3, 44.95);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (3, 24, 3, 3, '2026-07-10', '2026-07-16', '2026-07-16', 1319.4, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (20, 7, 3, 3, '2026-06-05', '2026-06-13', '2026-06-13', 2799.2, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (20, 1, 4, 2, '2026-07-04', '2026-07-05', NULL, 349.9, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (27, 25, 1, 3, '2026-05-03', '2026-05-08', '2026-05-08', 449.5, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (25, 17, 3, 3, '2026-08-04', '2026-08-07', '2026-08-07', 389.7, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (4, 8, 3, 3, '2026-06-11', '2026-06-12', '2026-06-12', 89.9, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (13, 8, 2, 5, '2026-09-17', '2026-09-22', '2026-09-24', 649.5, 129.9);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (11, 31, 1, 3, '2026-05-01', '2026-05-04', '2026-05-04', 269.7, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (22, 18, 3, 3, '2026-07-10', '2026-07-22', '2026-07-22', 4198.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (22, 15, 2, 5, '2026-05-26', '2026-06-05', '2026-06-07', 3499.0, 349.9);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (22, 30, 4, 3, '2026-05-23', '2026-06-01', '2026-06-01', 3149.1, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (21, 32, 1, 3, '2026-09-16', '2026-09-28', '2026-09-28', 4198.8, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (17, 20, 4, 2, '2026-08-16', '2026-08-17', NULL, 189.9, NULL);
INSERT INTO Aluguel (IdVeiculo, IdCliente, IdFilial, IdStatusAluguel, DataRetirada, DataDevolucaoPrevista, DataDevolucaoReal, ValorTotal, ValorMulta) VALUES (9, 9, 2, 3, '2026-08-14', '2026-08-17', '2026-08-17', 659.7, NULL);

-- Pagamento
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (1, 2, 3, '2026-06-15', 1558.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (2, 3, 2, '2026-08-17', 629.3);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (3, 3, 2, '2026-08-25', 2449.3);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (4, 3, 4, '2026-08-31', 809.1);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (5, 5, 5, '2026-09-06', 2088.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (6, 3, 3, '2026-05-27', 1709.1);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (7, 2, 2, '2026-08-26', 569.7);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (8, 3, 2, '2026-07-10', 2278.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (9, 5, 2, '2026-06-07', 899.0);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (10, 1, 3, '2026-09-03', 179.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (11, 2, 2, '2026-07-12', 809.1);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (12, 3, 2, '2026-05-05', 809.1);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (13, 1, 2, '2026-09-18', 2858.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (14, 4, 3, '2026-08-25', 779.4);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (15, 5, 2, '2026-06-05', 389.7);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (16, 5, 3, '2026-09-16', 909.3);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (17, 1, 5, '2026-07-20', 179.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (18, 2, 3, '2026-06-17', 1299.0);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (19, 4, 2, '2026-05-01', 2638.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (20, 5, 2, '2026-05-07', 269.7);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (21, 5, 2, '2026-06-13', 1558.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (22, 4, 2, '2026-06-11', 2088.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (23, 5, 4, '2026-07-04', 539.4);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (24, 4, 2, '2026-05-19', 439.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (25, 3, 4, '2026-07-12', 629.3);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (26, 4, 1, '2026-09-17', 1899.0);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (27, 3, 2, '2026-05-09', 179.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (28, 5, 5, '2026-06-23', 2079.2);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (29, 2, 2, '2026-08-25', 719.2);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (30, 4, 2, '2026-07-27', 2418.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (31, 2, 5, '2026-05-07', 699.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (32, 1, 4, '2026-07-09', 1759.2);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (33, 3, 1, '2026-05-22', 1049.7);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (34, 3, 2, '2026-07-10', 649.5);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (35, 2, 3, '2026-08-12', 1558.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (36, 2, 4, '2026-06-21', 629.3);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (37, 3, 3, '2026-07-10', 1319.4);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (38, 2, 2, '2026-06-06', 2799.2);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (39, 2, 1, '2026-07-05', 349.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (40, 4, 2, '2026-05-03', 449.5);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (41, 1, 2, '2026-08-04', 389.7);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (42, 1, 2, '2026-06-11', 89.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (43, 4, 4, '2026-09-17', 649.5);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (44, 5, 2, '2026-05-02', 269.7);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (45, 1, 4, '2026-07-10', 4198.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (46, 2, 2, '2026-05-27', 3499.0);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (47, 4, 2, '2026-05-23', 3149.1);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (48, 1, 2, '2026-09-17', 4198.8);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (49, 4, 1, '2026-08-16', 189.9);
INSERT INTO Pagamento (IdAluguel, IdTipoPagamento, IdStatusPagamento, DataPagamento, ValorPago) VALUES (50, 3, 2, '2026-08-15', 659.7);