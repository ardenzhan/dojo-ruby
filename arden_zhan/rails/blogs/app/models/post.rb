class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :comments, as: :commentable

  validates :user, :blog, presence: true
  validates :title, presence: true, length: { maximum: 20 }, 
  validates :content, presence: true, length: { maximum: 255 }
end
