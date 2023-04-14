CREATE TABLE Corretor_Dimension
(
  CorretorKey UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
  corrSalario INT NOT NULL,
  corrRegistro INT NOT NULL,
  corrNome VARCHAR(100) NOT NULL,
  corrEmail VARCHAR(100) NOT NULL,
  corrOrcamento INT NOT NULL,
  regiaoNome VARCHAR(50) NOT NULL,
  PRIMARY KEY (CorretorKey)
);

CREATE TABLE Anuncio_Dimension
(
  AnuncioKey UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
  meioComNome VARCHAR(100) NOT NULL,
  meioComTipo VARCHAR(100) NOT NULL,
  anuncValor INT NOT NULL,
  PRIMARY KEY (AnuncioKey)
);

CREATE TABLE Imovel_Dimension
(
  ImovelKey UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
  EnderecoCompleto VARCHAR(100) NOT NULL,
  imovelLogradouro VARCHAR(100) NOT NULL,
  imovelBairro VARCHAR(100) NOT NULL,
  imovelCidade VARCHAR(100) NOT NULL,
  regiaoNome VARCHAR(100) NOT NULL,
  imovelTipo VARCHAR(100) NOT NULL,
  imovelValor INT NOT NULL,
  PRIMARY KEY (ImovelKey)
);

CREATE TABLE Proprietario_Dimension
(
  propNome VARCHAR(100) NOT NULL,
  propContato VARCHAR(100) NOT NULL,
  ProprietarioKey UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
  PRIMARY KEY (ProprietarioKey)
);

CREATE TABLE Calendario_Dimension
(
  CalendarioKey UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
  DataCompleta DATE NOT NULL,
  DiaDaSemana VARCHAR(20) NOT NULL,
  DiaDoMes INT NOT NULL,
  Trimestre INT NOT NULL,
  Ano INT NOT NULL,
  Mes INT NOT NULL,
  PRIMARY KEY (CalendarioKey)
);

CREATE TABLE Comprador_Dimension
(
  CompradorKey UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
  compNome VARCHAR(50) NOT NULL,
  compContato VARCHAR(50) NOT NULL,
  PRIMARY KEY (CompradorKey)
);

CREATE TABLE ReceitaDetalhada
(
  transValor FLOAT NOT NULL,
  transTipo VARCHAR(10) NOT NULL,
  receitaValor FLOAT NOT NULL,
  TID UNIQUEIDENTIFIER NOT NULL,
  CompradorKey UNIQUEIDENTIFIER NOT NULL,
  AnuncioKey UNIQUEIDENTIFIER NOT NULL,
  ProprietarioKey UNIQUEIDENTIFIER NOT NULL,
  CalendarioKey UNIQUEIDENTIFIER NOT NULL,
  CorretorKey UNIQUEIDENTIFIER NOT NULL,
  ImovelKey UNIQUEIDENTIFIER NOT NULL,
  PRIMARY KEY (TID),
  FOREIGN KEY (CompradorKey) REFERENCES Comprador_Dimension(CompradorKey),
  FOREIGN KEY (AnuncioKey) REFERENCES Anuncio_Dimension(AnuncioKey),
  FOREIGN KEY (ProprietarioKey) REFERENCES Proprietario_Dimension(ProprietarioKey),
  FOREIGN KEY (CalendarioKey) REFERENCES Calendario_Dimension(CalendarioKey),
  FOREIGN KEY (CorretorKey) REFERENCES Corretor_Dimension(CorretorKey),
  FOREIGN KEY (ImovelKey) REFERENCES Imovel_Dimension(ImovelKey)
);

CREATE TABLE ReceitaAgrupada
(
  transValor FLOAT NOT NULL,
  transTipo VARCHAR(10) NOT NULL,
  receitaValor FLOAT NOT NULL,
  CalendarioKey UNIQUEIDENTIFIER NOT NULL,
  ImovelKey UNIQUEIDENTIFIER NOT NULL,
  FOREIGN KEY (CalendarioKey) REFERENCES Calendario_Dimension(CalendarioKey),
  FOREIGN KEY (ImovelKey) REFERENCES Imovel_Dimension(ImovelKey)
);