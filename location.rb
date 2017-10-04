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

  def itinerary
    p "Began trip."
    destinations.each_cons(2) do |destination|
      p "Travelled from #{destination[0].name} to #{destination[1].name}."
    end
    p "Ended trip."
  end

end

trip = Trips.new

trip.destination("Toronto")
trip.destination("Ottawa")
trip.destination("Montreal")
trip.destination("Quebec City")
trip.destination("Halifax")
trip.destination("St. John's")

trip.itinerary.inspect
