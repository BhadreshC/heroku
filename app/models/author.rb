class Author < ApplicationRecord
  has_one :author_detail
  has_one_attached :photo
end
