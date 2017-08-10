class ArticleNote < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true
  belongs_to :article, optional: true
end
