json.extract! article, :id, :name, :body
json.authors do
  json.array! article.authors
end
json.genres do
  json.array! article.genres
end
