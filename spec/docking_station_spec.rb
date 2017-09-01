#impicitly defined subject syntax

require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  describe '#release_bike' do

    it "releases an instance of Bike" do
      bike = subject.release_bike
      expect(bike).to be_instance_of(Bike)
    end

    it "bike is working" do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  end

describe '#dock' do
#    it "docks a bike" do
#      subject.dock(bike)
#    end
    it {is_expected.to respond_to(:dock).with(1).argument}
  end
end

#Given DockingStation
#When :release_bike is called on instance of DockingStation
#Then respond (respond_to release_bike method with true or false)
