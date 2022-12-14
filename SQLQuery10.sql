USE [Sandbox]
GO
/****** Object:  StoredProcedure [dbo].[getBooksAndPages]    Script Date: 2022-04-11 21:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getBooksAndPages](@book_name AS NVARCHAR(100), @number AS DECIMAL = 10)
AS
BEGIN
SELECT [b].[Id], [b].[Name], [p].[Id], [p].[BookId], [p].[Content], [p].[Number]
FROM [Books] AS [b] 
LEFT JOIN [Pages] AS [p] ON [b].[Id] = [p].[BookId] 
WHERE [b].[Name] = @book_name
ORDER BY [b].[Id], [p].[Id];
END;
