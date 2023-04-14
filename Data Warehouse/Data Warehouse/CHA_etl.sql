INSERT INTO [DWIskra_CHA_CHO].[dbo].[Proprietario_Dimension]
SELECT 
  p.propNome,
  p.propContato,
  newid()
FROM
  Proprietario p;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[Anuncio_Dimension]
SELECT 
  newid(),
  a.meioComNome,
  a.meioComTipo,
  a.anuncValor
FROM
  Anuncio a;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[Comprador_Dimension]
SELECT 
  newid(),
  c.compNome,
  c.compContato
FROM
  Comprador c;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[Corretor_Dimension]
SELECT 
  newid(),
  c.corrSalario,
  c.corrRegistro,
  c.corrNome,
  c.corrEmail,
  c.corrOrcamento,
  r.regiaoNome
FROM
  Corretor AS c, Regiao AS r
WHERE
  c.regiaoID = r.regiaoID;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[Calendario_Dimension]
SELECT
	newid(),
    c.datacompleta,
    c.diasemana,
    c.diames,
    c.trimestre,
    c.ano,
    c.mes
FROM (
SELECT DISTINCT
	DATEPART(YEAR,t.transData) AS ano,
	DATEPART(QUARTER,t.transData) AS trimestre,
	DATEPART(MONTH,t.transData) AS mes,
	DATEPART(DAY,t.transData) AS diames,
	DATENAME(WEEKDAY,t.transData) AS diasemana,
	t.transData AS datacompleta

FROM Transacao AS t
	) AS c;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[Imovel_Dimension]
SELECT
	newid(),
	CONCAT(i.imovelLogradouro, ' - ', i.imovelBairro, ' (', i.imovelCidade, ')'),
	i.imovelLogradouro,
	i.imovelBairro,
	i.imovelCidade,
	r.regiaoNome,
	i.imovelTipo,
	i.imovelValor
FROM
  Imovel AS i, Regiao AS r
WHERE
  i.regiaoID = r.regiaoID;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[ReceitaAgrupada]
SELECT
	t.transValor,
	t.transTipo,
	t.transValor*6/100,
	c.CalendarioKey,
	id.ImovelKey

FROM Transacao AS t, Imovel AS i, [DWIskra_CHA_CHO].[dbo].[Calendario_Dimension] AS c, [DWIskra_CHA_CHO].[dbo].[Imovel_Dimension] AS id

WHERE t.imovelID = i.imovelID AND c.DataCompleta = t.transData AND id.imovelLogradouro = i.imovelLogradouro;

INSERT INTO [DWIskra_CHA_CHO].[dbo].[ReceitaDetalhada]
SELECT
	t.transValor,
	t.transTipo,
	t.transValor*6/100,
	newid(),
	cd.CompradorKey,
	ad.AnuncioKey,
	pd.ProprietarioKey,
	c.CalendarioKey,
	cord.CorretorKey,
	id.ImovelKey

FROM Transacao AS t, Imovel AS i, [DWIskra_CHA_CHO].[dbo].[Calendario_Dimension] AS c, [DWIskra_CHA_CHO].[dbo].[Imovel_Dimension] AS id, 
	[DWIskra_CHA_CHO].[dbo].[Comprador_Dimension] AS cd, [DWIskra_CHA_CHO].[dbo].[Anuncio_Dimension] AS ad, [DWIskra_CHA_CHO].[dbo].[Proprietario_Dimension] AS pd,
	[DWIskra_CHA_CHO].[dbo].[Corretor_Dimension] AS cord, Comprador, Possui AS p, Proprietario AS prop, Anuncio AS a, Corretor

WHERE 
	t.imovelID = i.imovelID AND c.DataCompleta = t.transData AND id.imovelLogradouro = i.imovelLogradouro AND t.compID = Comprador.compID
	AND Comprador.compNome = cd.compNome AND Comprador.compContato = cd.compContato
	AND i.imovelID = p.imovelID AND prop.propID = p.propID AND ad.meioComNome = a.meioComNome AND ad.meioComTipo = a.meioComTipo
	AND cord.corrRegistro = Corretor.corrRegistro AND cord.corrNome = Corretor.corrNome AND Corretor.regiaoID = i.regiaoID AND prop.propContato = pd.propContato
	AND ad.anuncValor = a.anuncValor AND a.corrID = Corretor.corrID

USE [DWIskra_CHA_CHO];

CREATE VIEW FatoReceitaAgrupada AS
SELECT
	c.DataCompleta, c.DiaDaSemana, c.DiaDoMes, c.Trimestre, c.Ano, c.Mes,
	i.EnderecoCompleto, i.imovelLogradouro, i.imovelBairro, i.imovelCidade, i.regiaoNome, i.imovelTipo, i.imovelValor,
	r.transValor, r.receitaValor, r.transTipo
FROM Calendario_Dimension AS c, Imovel_Dimension AS i, ReceitaAgrupada AS r
WHERE r.CalendarioKey = c.CalendarioKey AND r.ImovelKey = i.ImovelKey

USE [DWIskra_CHA_CHO]

CREATE VIEW FatoReceitaDetalhada AS
SELECT
	c.DataCompleta, c.DiaDaSemana, c.DiaDoMes, c.Trimestre, c.Ano, c.Mes,
	i.EnderecoCompleto, i.imovelLogradouro, i.imovelBairro, i.imovelCidade, i.regiaoNome, i.imovelTipo, i.imovelValor,
	a.meioComNome, a.meioComTipo, a.anuncValor,
	p.propNome, p.propContato,
	comp.compNome, comp.compContato,
	corr.corrNome, corr.corrOrcamento, corr.corrEmail, corr.corrSalario, corr.corrRegistro,
	r.transValor, r.receitaValor, r.transTipo
FROM Calendario_Dimension AS c, Imovel_Dimension AS i, ReceitaDetalhada AS r,
		Anuncio_Dimension AS a, Proprietario_Dimension AS p, Comprador_Dimension as comp,
		Corretor_Dimension AS corr
WHERE r.CalendarioKey = c.CalendarioKey AND
	  r.ImovelKey = i.ImovelKey AND
	  r.AnuncioKey = a.AnuncioKey AND
	  r.ProprietarioKey = p.ProprietarioKey AND
	  r.CompradorKey = comp.CompradorKey AND
	  r.CorretorKey = corr.CorretorKey