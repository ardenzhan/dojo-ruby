class Ninja < ActiveRecord::Base
  belongs_to :dojo

  validates :first_name, :last_name, length: { in: 2..20 }
  validates :dojo, presence: true

  before_save do
    self.first_name.capitalize!
    self.last_name.capitalize!
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
