class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true,
                            length: {minimum: 3}
  validates :description, presence: true
  belongs_to :category, optional: true
  has_many :article_notes
  has_many :comments, as: :commentable
end
