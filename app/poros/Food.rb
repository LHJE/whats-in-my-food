class Food
  attr_reader :total

  def initialize(attrs)
    @total = attrs[:totalHits]
  end
end
