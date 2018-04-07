# Find out how you can retrieve all users who are NOT a friend with the first User
# Or, all the users whose friends do not include User.first

# first User is not friend of first User, so will show in list
User.where.not(id: User.first.friendees.ids) 

# Experiment with Friendship table more
# These two get rid of all direct relationships with User.first but will still show other users so not really possible to use Friendship table? Have to use User table to filter
Friendship.joins(:friend).where.not(friend: User.first)
Friendship.joins(:friendee).where.not(friend: User.first).select("*"))

rails g model User first_name:string last_name:string

# user.friend - friend is friend of user, or someone who is friend of user
# user.friendee - user is friend of friendee, or someone user is friend to
rails g model Friendship friend:references friendee:references

belongs_to :whatever, required: true
# what's difference between required: true and validates presence: true ?
# validates presence calls required: true



# https://medium.com/@jbmilgrom/active-record-many-to-many-self-join-table-e0992c27c1e


rails g model Follow follower:references followee:references
# both will be foreign key

# Follow model
foreign_key: :follower_id, class_name: "User"
foreign_key: :followee_id, class_name: "User"
#foreign key reference isn't actually needed if named properly

# User model
# all users that following
has_many :follow_following, foreign_key: :follower_id, class_name: "Follow"
has_many :following, through: :follow_following, source: :followee

# all users following me
has_many :follow_followers, foreign_key: :followee_id, class_name: "Follow"
has_many :followers, through: :follow_followers, source: :followers

# second user will auto follow first user back
User.second.following << User.first
Follow.all

# method
def follow_user user
  self.following << user
end
