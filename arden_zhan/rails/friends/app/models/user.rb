class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  # friends - friends of user
  has_many :friendship_friends, foreign_key: :friendee_id, class_name: "Friendship"
  has_many :friends, through: :friendship_friends, source: :friend

  # friendees - other users that user is friend to 
  has_many :friendship_friendees, foreign_key: :friend_id, class_name: "Friendship"
  has_many :friendees, through: :friendship_friendees, source: :friendee

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
