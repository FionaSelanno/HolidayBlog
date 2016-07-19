class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {maximum: 20}
  validates :content, length: {minimum: 40}
end
