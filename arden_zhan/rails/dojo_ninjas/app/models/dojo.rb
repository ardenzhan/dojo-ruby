class Dojo < ActiveRecord::Base
  has_many :ninjas

  validates :name, :city, length: { in: 2..20 }
  validates :state, length: { is: 2 }

  before_save do
    self.name = name.titleize
    self.city = city.titleize
    self.state.upcase!
  end

  def location
    "#{self.city}, #{self.state}"
  end
end
