require_relative 'human'

class Samurai < Human
  @@samurais = 0

  def initialize
    super
    @health = 200
    @@samurais += 1
  end

  def death_blow(obj)
    obj.health = 0
  end

  def meditate
    @health = 200
  end

  def self.how_many
    @@samurais
  end
end
