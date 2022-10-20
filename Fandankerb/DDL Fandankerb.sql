CREATE TABLE Banda
(
  BandaID NUMERIC(4, 0) NOT NULL,
  BandaNome VARCHAR(50) NOT NULL,
  BandaEndereço VARCHAR(100) NOT NULL,
  BandaTelefone NUMERIC(11, 0) NOT NULL,
  PRIMARY KEY (BandaID),
  UNIQUE (BandaNome)
);

CREATE TABLE Técnico
(
  TécnicoCPF NUMERIC(11, 0) NOT NULL,
  TécnicoNome VARCHAR(50) NOT NULL,
  TécnicoEndereço VARCHAR(100) NOT NULL,
  PRIMARY KEY (TécnicoCPF)
);

CREATE TABLE Show
(
  ShowNomeLocal VARCHAR(50) NOT NULL,
  ShowData DATE NOT NULL,
  ShowTipo VARCHAR(50) NOT NULL,
  ShowNome VARCHAR(50),
  PRIMARY KEY (ShowNomeLocal, ShowData)
);

CREATE TABLE SeApresentaEm
(
  ShowNomeLocal VARCHAR(50) NOT NULL,
  ShowData DATE NOT NULL,
  BandaID NUMERIC(4, 0) NOT NULL,
  DuraçãoApresentação INT NOT NULL,
  PRIMARY KEY (ShowNomeLocal, ShowData, BandaID),
  FOREIGN KEY (ShowNomeLocal, ShowData) REFERENCES Show(ShowNomeLocal, ShowData),
  FOREIGN KEY (BandaID) REFERENCES Banda(BandaID)
);

CREATE TABLE Técnico_TécnicoTelefone
(
  TécnicoCPF NUMERIC(11, 0) NOT NULL,
  TécnicoTelefone NUMERIC(11, 0) NOT NULL,
  PRIMARY KEY (TécnicoTelefone, TécnicoCPF),
  FOREIGN KEY (TécnicoCPF) REFERENCES Técnico(TécnicoCPF)
);

CREATE TABLE Instrumento
(
  InstrumentoSerial NUMERIC(6, 0) NOT NULL,
  InstrumentoModelo VARCHAR(50) NOT NULL,
  InstrumentoMarca VARCHAR(50) NOT NULL,
  InstrumentoAno NUMERIC(4, 0) NOT NULL,
  BandaID NUMERIC(4, 0),
  TécnicoCPF NUMERIC(11, 0) NOT NULL,
  PRIMARY KEY (InstrumentoSerial),
  FOREIGN KEY (BandaID) REFERENCES Banda(BandaID),
  FOREIGN KEY (TécnicoCPF) REFERENCES Técnico(TécnicoCPF)
);