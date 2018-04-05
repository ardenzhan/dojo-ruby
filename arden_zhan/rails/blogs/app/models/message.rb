class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable

  validates :post, :user, presence: true
  validates :message, presence: true, length: { maximum: 255 }
end
