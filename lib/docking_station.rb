require_relative 'bike'

class DockingStation
  attr_reader :bike
  attr_writer :bike     #allows us to change value of @bike!

#reader
=begin
def bike
  @bike
end

#writer
def bike=(value)
  @bike = value
end
=end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end
