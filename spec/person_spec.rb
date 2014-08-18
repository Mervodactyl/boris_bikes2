require 'person'

describe Person do

	let(:bike) { Bike.new }
	let(:bike) { double :bike, {:broken? => false} }
	let(:bike) { double :bike, {:broken? => true} }
	let(:person) { Person.new }
	# lets(:break_bike?) { double:bike } true

	it "should not have a bike" do
		expect(person.has_bike?).to eq false
	end

	it "should be able to rent a bike from the docking station" do
		person.rent(bike)
		expect(person.has_bike?).to eq true
	end

	it "should be able to return a bike to the docking station" do
		person.return_bike
		expect(person.has_bike?).to eq false
	end

	it "can break the bike they rented" do
		person.rent(bike)
		expect(bike).to receive(:break!)
		person.break_bike
	end

end