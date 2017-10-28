class Genre < ApplicationRecord
  has_many :books, through: :genreings, source: :writeable, source_type: 'Book'
  has_many :articles, through: :genreings, source: :writeable, source_type: 'Article'
  has_many :genreings
end
