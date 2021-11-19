-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT
Distinct T.Name as Track,
A.Title as AlbumName,
M.Name as MediaType,
G.Name as Genre
FROM Track T
Join Album A
on A.AlbumId = T.AlbumId
Join MediaType M
on M.MediaTypeId = T.MediaTypeId
Join Genre G
on G.GenreId = T.GenreId;