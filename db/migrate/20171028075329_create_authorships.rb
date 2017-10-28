class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.belongs_to :author
      t.string :writeable_type
      t.integer :writeable_id
      t.timestamps
    end
  end
end
