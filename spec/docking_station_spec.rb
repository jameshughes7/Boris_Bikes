#impicitly defined subject syntax

require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
end

#Given DockingStation
#When :release_bike is called on instance of DockingStation
#Then respond (respond_to release_bike method with true or false)
