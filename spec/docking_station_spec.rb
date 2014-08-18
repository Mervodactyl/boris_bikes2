require 'docking_station'

describe Docking_station do

let(:bike) { double :bike, {:broken? => false}}
let(:broken_bike) { double :bike, {:broken? => true} }
let(:station) { Docking_station.new(:capacity => 20) }

	it "should be able to dock a bike" do
		expect(station.bikes).to eq []
		station.dock(bike)
		expect(station.bikes).to eq [bike]
	end

	it "should be able to release a bike" do
		station.dock(bike)
		station.release_bike
		expect(station.bikes).to eq []
	end

	it "should provide a list of available bikes" do
		station.dock(bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq [bike]
	end

	it "should know if it's reached maximum capacity" do
		expect(station).not_to be_full
		20.times { station.dock(bike) }
		expect(station).to be_full
	end

	it "should not accept a bike if it's full" do
		20.times { station.dock(bike) }
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end

end
