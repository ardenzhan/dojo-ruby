class Message < ActiveRecord::Base
  belongs_to :post

  validates :author, presence: true
  validates :message, length: { minimum: 15 }
end
