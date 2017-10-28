class AddIsPrimeToBooks < ActiveRecord::Migration
  def change
    add_column :books, :prime_name, :boolean
    add_index :books, :prime_name
  end
end
