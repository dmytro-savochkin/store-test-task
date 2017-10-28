class FillAuthorsAndAuthorships < ActiveRecord::Migration
  def up
    Authorship.transaction do
      [Book, Article].each do |publication_class|
        publication_class.all.each do |publication|
          author_names = publication.read_attribute(:authors).split(',').map(&:strip)
          author_names.each do |author_name|
            author = Author.find_or_create_by(name: author_name)
            Authorship.create!(author: author, writeable: publication)
          end
        end
      end
    end
  end

  def down; end
end
