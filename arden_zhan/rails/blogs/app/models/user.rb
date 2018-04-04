class User < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :owners, dependent: :destroy
  has_many :blogs, through: :owners
  has_many :blogs_posted_on, through: :posts, source: :blog

  validates :first_name, :last_name, length: { in: 2..20 }
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save do
    self.first_name.capitalize!
    self.last_name.capitalize!
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
