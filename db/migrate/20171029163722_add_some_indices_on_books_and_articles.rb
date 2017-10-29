class AddSomeIndicesOnBooksAndArticles < ActiveRecord::Migration
  def change
    add_index :books, :name
    add_index :books, :publisher
    add_index :articles, :name
  end
end
