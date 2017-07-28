class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true,
                            length: {minimum: 3}
  validates :description, presence: true
  belongs_to :category
end
