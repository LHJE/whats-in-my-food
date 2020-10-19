# frozen_string_literal: true

class Food
  attr_reader :total

  def initialize(attrs)
    @total = attrs[:totalHits]
  end
end
