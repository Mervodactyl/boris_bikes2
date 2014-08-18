require 'bike'

describe Bike do

	let(:bike) { Bike.new }

	it "should be functional" do
		expect(bike.broken?).to eq false
	end

	it "can be broken" do
		expect(bike.break!.broken?).to eq true
	end

	it "can be fixed" do
		expect(bike.fix!.broken?).to eq false
	end

end