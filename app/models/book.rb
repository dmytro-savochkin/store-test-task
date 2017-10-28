class Book < ApplicationRecord
  has_many :authorships, as: :writeable
  has_many :authors, through: :authorships
  has_many :genreings, as: :writeable
  has_many :genres, through: :genreings
  has_many :single_sorts
end
