class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :content, length: {minimum: 40}
end
