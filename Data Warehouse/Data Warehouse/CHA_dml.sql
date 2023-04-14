insert into Secretario values (220001, 4500, 'Fabio Fernandes', 'fabi_fer@gmail.com');
insert into Secretario values (220002, 3700, 'Gabriela Geraldo', 'gabi_ger@gmail.com');
insert into Secretario values (220003, 3500, 'Hugo Humberto', 'hugo_hum@gmail.com');
insert into Secretario values (220004, 3500, 'Iago Isack', 'iago_isa@gmail.com');
insert into Secretario values (220005, 3550, 'Jaison Jaimeson', 'jai_jai@gmail.com');
Insert into Secretario values (220006, 4600, 'Laura Lemos', 'laura_lem@gmail.com');
Insert into Secretario values (220007, 3800, 'Marcos Medeiros', 'marcos_medeiros@gmail.com');

insert into Regiao values (330001,'Rio ZS');
insert into Regiao values (330002,'Rio ZN');
insert into Regiao values (330003,'Niterói');
insert into Regiao values (330004,'Macaé');
insert into Regiao values (330005,'Parati');
Insert into Regiao values (330006, 'Nova Iguaçu');
Insert into Regiao values (330007, 'Volta Redonda');

insert into meioComunicacao values ('Facebook', 'Rede Social');
insert into meioComunicacao values ('O Globo', 'Jornal');
insert into meioComunicacao values ('Guanabara', 'Rádio');
insert into meioComunicacao values ('SBT', 'Televisão');
insert into meioComunicacao values ('Correio da Manhã', 'Jornal');
insert into meioComunicacao values ('O Globo', 'Rádio');
Insert into meioComunicacao values ('Globo News', 'Canal de Notícias');
Insert into meioComunicacao values ('Band News', 'Canal de Notícias');

insert into Imovel values (440001,  ' Rua Bela, 120', 'São Lourenço', 'Niterói', 600000, 'casa',330003);
insert into Imovel values (440002,  ' Avenida Praia de Botafogo, 444', 'Botafogo', 'Rio de Janeiro', 500000, 'apartamento',330001);
insert into Imovel values (440003,  ' Travessa Formosa, 31', 'Tijuca', 'Rio de Janeiro', 200000, 'studio',330002);
insert into Imovel values (440004,  ' Rua João de Campos, 879', 'Aroeira', 'Macaé', 700000, 'casa',330004);
insert into Imovel values (440005,  ' Avenida Senador Vergueirio, 324', 'Flamengo', 'Rio de Janeiro', 350000, 'apartamento',330001);
Insert into Imovel values (440006, 'Rua das Flores, 123', 'Centro', 'Niterói', 400000, 'apartamento', 330003);

insert into Comprador values (110001,  ' Amanda America', '21999887766', 220001);
insert into Comprador values (110002,  ' Bianca Bernardes', '21999887755', 220002);
insert into Comprador values (110003,  ' Cleiton Chavier', '21999887744', 220001);
insert into Comprador values (110004,  ' Daniel Damasceno', 'dani_damasco@gmail.com', 220005);
insert into Comprador values (110005,  ' Emanuel Eustaquio', '21999887722', 220001);
Insert into Comprador values (110006, 'Fernanda Fernandes', '21998887766', 220006);
Insert into Comprador values (110007, 'Guilherme Gomes', '21998887755', 220007);

insert into Proprietario values (660001,  ' Carlinhos Cachoeira', '21992142456', 220001);
insert into Proprietario values (660002,  ' Renan Calheiros', 'mrcalheiros@protonmail.com', 220001);
insert into Proprietario values (660003,  ' Omar Mustafá Suleimani', '42991186548', 220004);
insert into Proprietario values (660004,  ' Jack Ma', '58978546314', 220005);
insert into Proprietario values (660005,  ' Hermes Trismegisto', 'greeksage@gmail.com', 220004);
Insert into Proprietario values (660006, 'Paulo Pereira', '21991234567', 220006);
Insert into Proprietario values (660007, 'Aline Almeida', 'aline.almeida@gmail.com', 220007);

insert into Possui values (660001,440001);
insert into Possui values (660002,440002);
insert into Possui values (660003,440003);
insert into Possui values (660004,440004);
insert into Possui values (660005,440005);
insert into Possui values (660002,440005);
Insert into Possui values (660006, 440006);
Insert into Possui values (660007, 440006);

insert into Corretor values (550001,7800, 100111, 'Kelvin Klain','kevin_klai@gmail.com',2000,330001);
insert into Corretor values (550002,7750, 100112, 'Leonardo Leopoldo','leo_leo@gmail.com',2000,330002);
insert into Corretor values (550003,7900, 100113, 'Maria Marilei','mari_mari@gmail.com',2000,330003);
insert into Corretor values (550004,8200, 100114, 'Neto Nascimento','neto_nasci@gmail.com',2500,330004);
insert into Corretor values (550005,7200, 100115, 'Olga Oliveira','olga_oli@gmail.com',2000,330005);
Insert into Corretor values (550006, 7500, 100116, 'Rafael Ramos', 'rafael.ramos@gmail.com', 2000, 330003);
Insert into Corretor values (550007, 7800, 100117, 'Camila Castro', 'camila.castro@gmail.com', 2500, 330007);

insert into Anuncio values (880001, 200, '2023-09-11', 550001, 'O Globo','Jornal');
insert into Anuncio values (880002, 300, '2023-02-11', 550002, 'Correio da Manhã','Jornal');
insert into Anuncio values (880003, 150, '2023-01-01', 550003, 'Facebook','Rede Social');
insert into Anuncio values (880004, 200, '2023-01-01', 550003, 'O Globo','Rádio');
insert into Anuncio values (880005, 50, '2023-09-22', 550005, 'Guanabara','Rádio');
Insert into Anuncio values (880006, 350, '2023-02-28', 550007, 'Globo News', 'Canal de Notícias');

insert into Transacao values (770001,'2023-03-01', 'Aluguel', 6000,550003, 110001, 440001);
insert into Transacao values (770002,'2023-03-02', 'Venda', 550000,550001, 110002, 440002);
insert into Transacao values (770003,'2023-03-01', 'Aluguel', 1500,550002, 110002, 440003);
insert into Transacao values (770004,'2023-03-24', 'Aluguel', 6500,550004, 110004, 440004);
insert into Transacao values (770005,'2023-03-25', 'Venda', 350500,550001, 110005, 440005);
INSERT INTO Transacao VALUES (770010, '2023-04-06', 'Aluguel', 3500, 550001, 110001, 440005);
INSERT INTO Transacao VALUES (770011, '2023-04-05', 'Venda', 120000, 550002, 110002, 440006);
INSERT INTO Transacao VALUES (770012, '2023-04-04', 'Aluguel', 2800, 550002, 110003, 440006);
INSERT INTO Transacao VALUES (770013, '2023-04-03', 'Venda', 140000, 550005, 110004, 440002);
INSERT INTO Transacao VALUES (770014, '2023-04-02', 'Aluguel', 1800, 550005, 110005, 440003);
INSERT INTO Transacao VALUES (770015, '2023-04-01', 'Venda', 110000, 550004, 110005, 440002);
INSERT INTO Transacao VALUES (770016, '2023-03-31', 'Aluguel', 3200, 550005, 110004, 440003);
INSERT INTO Transacao VALUES (770017, '2023-03-30', 'Venda', 100000, 550003, 110003, 440001);
INSERT INTO Transacao VALUES (770018, '2023-03-29', 'Aluguel', 2500, 550004, 110001, 440002);
INSERT INTO Transacao VALUES (770019, '2023-03-28', 'Venda', 90000, 550004, 110002, 440003);


insert into Anunciado values (440001,880001);
insert into Anunciado values (440002,880002);
insert into Anunciado values (440002,880003);
insert into Anunciado values (440003,880004);
insert into Anunciado values (440003,880005);
insert into Anunciado values (440001,880005);
insert into Anunciado values (440002,880001);
insert into Anunciado values (440005,880001);