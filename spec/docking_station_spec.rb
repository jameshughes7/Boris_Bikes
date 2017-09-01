#impicitly defined subject syntax

require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  describe '#release_bike' do

=begin
    it "releases an instance of Bike" do
      subject.bike=(1)
      bike = subject.release_bike
      expect(bike).to be_instance_of(Bike)
    end
=end

    it 'confirms bike I released is bike I docked' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    it "bike is working" do
      bike = Bike.new
      subject.dock(bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it "raises exception when no bikes available" do
      expect {subject.release_bike}.to raise_exception("No bikes available")
    end
  end

describe '#dock' do
    it "docks a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end

    it "raises exception when docking station is full" do
      bike = Bike.new
      subject.dock(bike)
      bike2 = Bike.new
      expect {subject.dock(bike2)}.to raise_exception("Docking Station is full")
    end
  end
end

#Given DockingStation
#When :release_bike is called on instance of DockingStation
#Then respond (respond_to release_bike method with true or false)
