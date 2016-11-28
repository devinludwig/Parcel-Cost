class Parcel
  define_method(:initialize) do |length, width, depth, weight, speed, distance|
    @length = length
    @width = width
    @depth = depth
    @speed = speed
    @weight = weight
    @distance = distance
  end

  define_method(:volume) do
    @volume = @length * @width * @depth

  end

  define_method(:cost_to_ship) do

    cost = (volume() + @weight + @speed + @distance) * 2
    shipping_cost = cost / 2
    shipping_cost.to_s().concat(' Dollars')
  end
end
