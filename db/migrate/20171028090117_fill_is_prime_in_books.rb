class FillIsPrimeInBooks < ActiveRecord::Migration
  def up
    Book.transaction do
      Book.all.each do |book|
        book.set_prime_name
        book.save!
      end
    end
  end

  def down; end
end
