CREATE TABLE Secretario
(
  secID INT NOT NULL,
  secSalario INT NOT NULL,
  secNome VARCHAR(50) NOT NULL,
  secEmail VARCHAR(50) NOT NULL,
  PRIMARY KEY (secID)
);

CREATE TABLE Regiao
(
  regiaoID INT NOT NULL,
  regiaoNome VARCHAR(50) NOT NULL,
  PRIMARY KEY (regiaoID)
);

CREATE TABLE meioComunicacao
(
  meioComNome VARCHAR(50) NOT NULL,
  meioComTipo VARCHAR(20) NOT NULL,
  PRIMARY KEY (meioComNome, meioComTipo)
);

CREATE TABLE Imovel
(
  imovelID INT NOT NULL,
  imovelLogradouro VARCHAR(100) NOT NULL,
  imovelBairro VARCHAR(100) NOT NULL,
  imovelCidade VARCHAR(100) NOT NULL,
  imovelValor INT NOT NULL,
  imovelTipo VARCHAR(20) NOT NULL,
  regiaoID INT NOT NULL,
  PRIMARY KEY (imovelID),
  FOREIGN KEY (regiaoID) REFERENCES Regiao(regiaoID)
);

CREATE TABLE Comprador
(
  compID INT NOT NULL,
  compNome VARCHAR(50) NOT NULL,
  compContato VARCHAR(50) NOT NULL,
  secID INT NOT NULL,
  PRIMARY KEY (compID),
  FOREIGN KEY (secID) REFERENCES Secretario(secID)
);

CREATE TABLE Proprietario
(
  propID INT NOT NULL,
  propNome VARCHAR(50) NOT NULL,
  propContato VARCHAR(50) NOT NULL,
  secID INT NOT NULL,
  PRIMARY KEY (propID),
  FOREIGN KEY (secID) REFERENCES Secretario(secID)
);

CREATE TABLE Possui
(
  propID INT NOT NULL,
  imovelID INT NOT NULL,
  PRIMARY KEY (propID, imovelID),
  FOREIGN KEY (propID) REFERENCES Proprietario(propID),
  FOREIGN KEY (imovelID) REFERENCES Imovel(imovelID)
);

CREATE TABLE Corretor
(
  corrID INT NOT NULL,
  corrSalario INT NOT NULL,
  corrRegistro INT NOT NULL,
  corrNome VARCHAR(50) NOT NULL,
  corrEmail VARCHAR(50) NOT NULL,
  corrOrcamento INT NOT NULL,
  regiaoID INT NOT NULL,
  PRIMARY KEY (corrID),
  FOREIGN KEY (regiaoID) REFERENCES Regiao(regiaoID),
  UNIQUE (corrRegistro)
);

CREATE TABLE Anuncio
(
  anuncID INT NOT NULL,
  anuncValor INT NOT NULL,
  anuncDataExp DATE NOT NULL,
  corrID INT NOT NULL,
  meioComNome VARCHAR(50) NOT NULL,
  meioComTipo VARCHAR(20) NOT NULL,
  PRIMARY KEY (anuncID),
  FOREIGN KEY (corrID) REFERENCES Corretor(corrID),
  FOREIGN KEY (meioComNome, meioComTipo) REFERENCES meioComunicacao(meioComNome, meioComTipo)
);

CREATE TABLE Transacao
(
  transID INT NOT NULL,
  transData DATE NOT NULL,
  transTipo VARCHAR(10) NOT NULL,
  transValor INT NOT NULL,
  corrID INT NOT NULL,
  compID INT NOT NULL,
  imovelID INT NOT NULL,
  PRIMARY KEY (transID),
  FOREIGN KEY (corrID) REFERENCES Corretor(corrID),
  FOREIGN KEY (compID) REFERENCES Comprador(compID),
  FOREIGN KEY (imovelID) REFERENCES Imovel(imovelID)
);

CREATE TABLE Anunciado
(
  imovelID INT NOT NULL,
  anuncID INT NOT NULL,
  PRIMARY KEY (imovelID, anuncID),
  FOREIGN KEY (imovelID) REFERENCES Imovel(imovelID),
  FOREIGN KEY (anuncID) REFERENCES Anuncio(anuncID)
);
