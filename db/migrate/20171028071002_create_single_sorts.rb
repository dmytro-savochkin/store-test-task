class CreateSingleSorts < ActiveRecord::Migration
  def change
    create_table :single_sorts do |t|
      t.belongs_to :list
      t.belongs_to :book
      t.integer :position
      t.timestamps
    end
  end
end
