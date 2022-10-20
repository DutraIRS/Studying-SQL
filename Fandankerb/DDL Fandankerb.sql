CREATE TABLE Banda
(
  BandaID NUMERIC(4, 0) NOT NULL,
  BandaNome VARCHAR(50) NOT NULL,
  BandaEndere�o VARCHAR(100) NOT NULL,
  BandaTelefone NUMERIC(11, 0) NOT NULL,
  PRIMARY KEY (BandaID),
  UNIQUE (BandaNome)
);

CREATE TABLE T�cnico
(
  T�cnicoCPF NUMERIC(11, 0) NOT NULL,
  T�cnicoNome VARCHAR(50) NOT NULL,
  T�cnicoEndere�o VARCHAR(100) NOT NULL,
  PRIMARY KEY (T�cnicoCPF)
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
  Dura��oApresenta��o INT NOT NULL,
  PRIMARY KEY (ShowNomeLocal, ShowData, BandaID),
  FOREIGN KEY (ShowNomeLocal, ShowData) REFERENCES Show(ShowNomeLocal, ShowData),
  FOREIGN KEY (BandaID) REFERENCES Banda(BandaID)
);

CREATE TABLE T�cnico_T�cnicoTelefone
(
  T�cnicoCPF NUMERIC(11, 0) NOT NULL,
  T�cnicoTelefone NUMERIC(11, 0) NOT NULL,
  PRIMARY KEY (T�cnicoTelefone, T�cnicoCPF),
  FOREIGN KEY (T�cnicoCPF) REFERENCES T�cnico(T�cnicoCPF)
);

CREATE TABLE Instrumento
(
  InstrumentoSerial NUMERIC(6, 0) NOT NULL,
  InstrumentoModelo VARCHAR(50) NOT NULL,
  InstrumentoMarca VARCHAR(50) NOT NULL,
  InstrumentoAno NUMERIC(4, 0) NOT NULL,
  BandaID NUMERIC(4, 0),
  T�cnicoCPF NUMERIC(11, 0) NOT NULL,
  PRIMARY KEY (InstrumentoSerial),
  FOREIGN KEY (BandaID) REFERENCES Banda(BandaID),
  FOREIGN KEY (T�cnicoCPF) REFERENCES T�cnico(T�cnicoCPF)
);