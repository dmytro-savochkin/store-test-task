class Genreing < ApplicationRecord
  belongs_to :genre
  belongs_to :writeable, polymorphic: true
end
