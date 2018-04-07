class Friendship < ActiveRecord::Base
  belongs_to :friend, class_name: "User", required: true
  belongs_to :friendee, class_name: "User", required: true

end
