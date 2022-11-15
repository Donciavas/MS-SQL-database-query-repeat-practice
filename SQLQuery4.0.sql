SELECT * FROM Books
INNER JOIN BookCategory ON Books.Id = BookCategory.BooksId 
INNER JOIN Category ON BookCategory.CategoriesId = Category.Id