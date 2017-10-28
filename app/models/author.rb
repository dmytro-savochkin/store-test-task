class Author < ApplicationRecord
  has_many :books, through: :authorships, source: :writeable, source_type: 'Book'
  has_many :articles, through: :authorships, source: :writeable, source_type: 'Article'
  has_many :authorships
end
