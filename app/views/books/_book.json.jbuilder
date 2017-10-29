json.extract! book, :id, :name, :available, :publisher
json.authors do
  json.array! book.authors
end
json.genres do
  json.array! book.genres
end
