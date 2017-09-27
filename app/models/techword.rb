class Techword < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :user, optional: true
end
