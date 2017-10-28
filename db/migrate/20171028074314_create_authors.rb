class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.index :name, unique: true
      t.timestamps
    end
  end
end
