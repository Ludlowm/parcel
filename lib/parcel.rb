class Parcel
  define_method(:initialize) do |length, height, width, weight, distance, days|
    @length = length
    @height= height
    @width = width
    @weight = weight
    @distance = distance
    @days = days
  end

  define_method(:volume) do
    (@length * @width * @height)/10
  end

  define_method(:weight) do
    @weight
  end

  define_method(:delivery_info) do
    @distance/20 - @days/2
  end


  define_method(:cost_to_ship) do
    self.volume + self.weight + self.delivery_info
  end
  

end
