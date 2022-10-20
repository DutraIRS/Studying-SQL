SELECT Banda.BandaNome AS 'Nome da Banda', COUNT(SeApresentaEm.BandaID) AS 'N�mero de Shows'
FROM Banda, SeApresentaEm
WHERE Banda.BandaID = SeApresentaEm.BandaID
GROUP BY Banda.BandaNome;
