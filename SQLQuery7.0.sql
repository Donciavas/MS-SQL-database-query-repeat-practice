CREATE PROCEDURE getBooksAndPages
AS
BEGIN
SELECT [b].[Id], [b].[Name], [p].[Id], [p].[BookId], [p].[Content], [p].[Number] 
FROM [Books] AS [b] 
LEFT JOIN [Pages] AS [p] ON [b].[Id] = [p].[BookId] 
ORDER BY [b].[Id], [p].[Id];
END;
