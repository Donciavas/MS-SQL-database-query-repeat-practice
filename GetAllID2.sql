CREATE PROCEDURE getC#Employees
AS
BEGIN
SELECT [d].[VARDAS], [d].[PAVARDE]
FROM [DARBUOTOJAS] AS [d]
WHERE [d].[SKYRIUS_PAVADINIMAS] = 'C#'
--LEFT JOIN [Pages] AS [p] ON [b].[Id] = [p].[BookId] 
ORDER BY [d].[PAVARDE];
END;
