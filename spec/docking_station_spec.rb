#impicitly defined subject syntax

require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  it "receives a bike" do
    bike = subject.receives_bike
    expect(bike).to eq("docked")
    end
  end
end

#Given DockingStation
#When :release_bike is called on instance of DockingStation
#Then respond (respond_to release_bike method with true or false)
