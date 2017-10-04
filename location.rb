class Location
  attr_accessor(:name)

  def initialize(name)
    @name = name
  end

end

class Trips

  attr_accessor(:destinations)

  def initialize
    @destinations = []
  end

  def destination(name)
    new_destination = Location.new(name)
    @destinations << new_destination
    new_destination
  end
end

Trips.new.destination("Toronto")
Trips.new.destination("Ottawa")
Trips.new.destination("Montreal")
Trips.new.destination("Quebec City")
Trips.new.destination("Halifax")
Trips.new.destination("St. John's")
