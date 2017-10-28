class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.boolean :available
      t.string :genres
      t.string :authors
      t.string :publisher
      t.timestamps
    end
  end
end
