<html>
<head><table>Titulo</table></head>
<body>
<table border="1">
<tr>
<td>Título</td>
<td>Autor</td>
<td>Categoría</td>
</tr>
{for $book in doc("books.xml") /bookstore/book
return
<tr>
<td>{$book/title/text()}</td>
<td>{$book/author/text()}</td>
<td>{data($book/@category)}</td>
</tr>
}
</table>
</body>
</html>