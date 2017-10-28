class RemoveAuthorsAndGenresColumnsFromBooksAndArticles < ActiveRecord::Migration
  def change
    remove_column :books, :authors
    remove_column :books, :genres
    remove_column :articles, :authors
    remove_column :articles, :genres
  end
end
