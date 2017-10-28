class Authorship < ApplicationRecord
  belongs_to :author
  belongs_to :writeable, polymorphic: true
end
