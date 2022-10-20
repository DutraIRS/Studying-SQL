INSERT INTO Banda VALUES (0001, 'Imagine Dragons', 'Praia de Botafogo, 145', 21963552847);
INSERT INTO Banda VALUES (0002, 'Linkin Park', 'Praia de Botafogo, 146', 21987452564);
INSERT INTO Banda VALUES (0003, 'Skillet', 'Rua Voluntários da Pátria, 58', 21997485216);

INSERT INTO Técnico VALUES (17458932497, 'Marcelo Amorim', 'Rua Farani, 86');
INSERT INTO Técnico VALUES (14785265492, 'Juliana Marques Silva', 'Rua Jornalista Orlando Datas, 98');
INSERT INTO Técnico VALUES (13265487920, 'Flávio Costa Rodrigues', 'Rua Voluntários da Pátria, 32');

INSERT INTO Show VALUES ('Marina da Glória', '08/17/2020', 'Individual', NULL);
INSERT INTO Show VALUES ('Cidade Do Rock', '10/21/2022', 'Festival', 'Rock in Rio');
INSERT INTO Show VALUES ('Interlagos', '10/21/2022', 'Festival', 'Lollapalooza');
INSERT INTO Show VALUES ('Marina da Glória', '09/19/2020', 'Festival', 'RockFest');
INSERT INTO Show VALUES ('Interlagos', '09/19/2020', 'Individual', 'Skillet Solo');

INSERT INTO SeApresentaEm VALUES ('Marina da Glória', '08/17/2020', 0001, 112);
INSERT INTO SeApresentaEm VALUES ('Cidade Do Rock', '10/21/2022', 0001, 98);
INSERT INTO SeApresentaEm VALUES ('Cidade Do Rock', '10/21/2022', 0002, 45);
INSERT INTO SeApresentaEm VALUES ('Cidade Do Rock', '10/21/2022', 0003, 84);
INSERT INTO SeApresentaEm VALUES ('Interlagos', '10/21/2022', 0001, 49);
INSERT INTO SeApresentaEm VALUES ('Interlagos', '10/21/2022', 0002, 63);
INSERT INTO SeApresentaEm VALUES ('Interlagos', '10/21/2022', 0003, 54);
INSERT INTO SeApresentaEm VALUES ('Marina da Glória', '09/19/2020', 0001, 45);
INSERT INTO SeApresentaEm VALUES ('Marina da Glória', '09/19/2020', 0002, 35);
INSERT INTO SeApresentaEm VALUES ('Interlagos', '09/19/2020', 0003, 132);

INSERT INTO Técnico_TécnicoTelefone VALUES (17458932497, 21998467533);
INSERT INTO Técnico_TécnicoTelefone VALUES (14785265492, 21987453266);
INSERT INTO Técnico_TécnicoTelefone VALUES (14785265492, 21987663542);
INSERT INTO Técnico_TécnicoTelefone VALUES (13265487920, 21993654222);
INSERT INTO Técnico_TécnicoTelefone VALUES (13265487920, 11998633526);

INSERT INTO Instrumento VALUES (111111, 'Violão', 'Giannini', 2015, NULL, 17458932497);
INSERT INTO Instrumento VALUES (222222, 'Violão', 'Yamaha', 2012, 0001, 14785265492);
INSERT INTO Instrumento VALUES (333333, 'Baixo', 'Fender', 2012, 0003, 14785265492);
INSERT INTO Instrumento VALUES (444444, 'Guitarra', 'Fender', 2012, 0001, 13265487920);
INSERT INTO Instrumento VALUES (555555, 'Teclado', 'Roland', 2012, 0003, 13265487920);