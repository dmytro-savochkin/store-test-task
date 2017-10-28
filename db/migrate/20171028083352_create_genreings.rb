class CreateGenreings < ActiveRecord::Migration
  def change
    create_table :genreings do |t|
      t.belongs_to :genre
      t.string :writeable_type
      t.integer :writeable_id
      t.timestamps
    end
  end
end
