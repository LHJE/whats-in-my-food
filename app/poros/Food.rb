class Food
  attr_reader :total,
              :foods

  def initialize(attrs)
    @total = attrs[:totalHits]
    @foods = attrs[:foods]
  end
end
