require 'docking_station'

describe Docking_station do

let(:bike) { double :bike, {:broken? => false}}
let(:broken_bike) { double :bike, {:broken? => true}}

	it "should be able to dock a bike" do
		station = Docking_station.new
		expect(station.bikes).to eq []
		station.dock(bike)
		expect(station.bikes).to eq [bike]
	end

end
