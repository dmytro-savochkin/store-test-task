class FillGenresAndGenreings < ActiveRecord::Migration
  def up
    Authorship.transaction do
      [Book, Article].each do |publication_class|
        publication_class.all.each do |publication|
          genre_names = publication.read_attribute(:genres).split(',').map(&:strip)
          genre_names.each do |author_name|
            genre = Genre.find_or_create_by(name: author_name)
            Genreing.create!(genre: genre, writeable: publication)
          end
        end
      end
    end
  end

def down; end
end
