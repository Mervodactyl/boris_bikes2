require 'docking_station'

describe Docking_station do

	let(:bike) { double :bike, {broken? => false}}
	let(:broken_bike) { double :bike, {broken? => true}}

	it "should be able to release a bike" do
		expect(Docking_station.new.release_bike).to eq true
	end

end
