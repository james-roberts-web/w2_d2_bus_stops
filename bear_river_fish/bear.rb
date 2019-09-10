class Bear

attr_accessor :name, :type, :stomach

  def initialize(name, type, stomach=[])
    @name = name
    @type = type
    @stomach = stomach
  end

  def bear_stomach
    return @stomach.count
  end

  def bear_eats_fish(fish)
    @stomach.push(fish)
  end

  def bear_roar
    return "I'm coming for you Leonardo."
  end
  
end
