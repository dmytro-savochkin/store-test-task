json.array! @publications do |publication|
  if publication.class == Book
    json.partial! 'books/book', book: publication
  elsif publication.class == Article
    json.partial! 'articles/article', article: publication
  end
end
