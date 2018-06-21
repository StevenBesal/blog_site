class Post < ApplicationRecord
  has_many :comments

  validates :title, length: {maximum: 15, message: "Max length is 15 chars"}
  validates :title, :body, presence: true

end
