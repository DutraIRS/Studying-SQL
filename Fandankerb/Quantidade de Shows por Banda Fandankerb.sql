SELECT Banda.BandaNome AS 'Nome da Banda', COUNT(SeApresentaEm.BandaID) AS 'Número de Shows'
FROM Banda, SeApresentaEm
WHERE Banda.BandaID = SeApresentaEm.BandaID
GROUP BY Banda.BandaNome;
