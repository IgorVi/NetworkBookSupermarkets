
USE NetworkBookSupermarketsIgor

----- самая популярная книга (продавалась чаще всего)

SELECT TOP(1) WITH TIES name
FROM Book b JOIN Sale s ON b.id = s.id_book
GROUP BY name
ORDER BY Count(*) DESC


USE NetworkBookSupermarketsIgor

--- самый активный продавец (продал больше всего штук книг)

SELECT TOP(1) WITH TIES name
FROM Marketer m JOIN Sale s ON m.id = s.id_marketer
GROUP BY m.name
ORDER BY Count(*) DESC


USE NetworkBookSupermarketsIgor

--- поиск по жанру

DECLARE @genre nvarchar(10) = 'Роман'

SELECT b.name
FROM Book b JOIN Genre g ON b.id_genre = g.id
WHERE g.name = @genre


USE NetworkBookSupermarketsIgor

--- поиск по автору

DECLARE @author nvarchar(30) = 'Джеффри Рихтер'

SELECT b.name
FROM Book b JOIN Author a ON b.id_author = a.id
WHERE a.name = @author


USE NetworkBookSupermarketsIgor

--- поиск по цене в диапазоне от и до

DECLARE @min_price int = 200, @max_price int = 300

SELECT b.name
FROM Book b JOIN Store s ON b.id = s.id_book
WHERE s.price >= @min_price AND s.price <= @max_price



USE NetworkBookSupermarketsIgor

--- отчёт по продажам за указанный с клавиатуры месяц (по каждому дню).

DECLARE @month int = 03

SELECT b.name, Day (s.[date])
FROM Book b JOIN Sale s ON b.id = s.id_book
WHERE Month(s.[date]) = @month