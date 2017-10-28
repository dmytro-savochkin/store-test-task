class Book < ApplicationRecord
  require 'prime'

  has_many :authorships, as: :writeable
  has_many :authors, through: :authorships
  has_many :genreings, as: :writeable
  has_many :genres, through: :genreings
  has_many :single_sorts

  before_save :set_prime_name, if: proc { |b| b.name_changed? }

  def set_prime_name
    self.prime_name = name_size_prime?
    true
  end

  private

  def name_size_prime?
    Prime.prime?(name.strip.size)
  end
end
