class River

attr_accessor :name, :amount_of_fish

  def initialize(name, amount_of_fish)
    @name = name
    @amount_of_fish = amount_of_fish
  end

  def fish_stocks
    return @amount_of_fish.count
  end

  # def bear_takes_fish(fish)
  #   return @amount_of_fish -= fish
  # end

end
