require 'spec_helper'

RSpec.describe Bike do
    before(:each) do
        @biker = Biker.new("Kenny", 30)
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@ride1).to be_an_instance_of(Ride)
            expect(@ride1.name).to eq("Walnut Creek Trail")
            expect(@ride1.distance).to eq(10.7)
            expect(@ride1.terrain).to eq(:hills)
        end
    end

    # describe '#loop?' do
    #     it 'can indicate if the ride is a loop or not' do
    #         expect(@ride1.loop?()).to eq(false)
    #         expect(@ride2.loop?()).to eq(true)
    #     end
    # end

    # describe '#total_distance' do
    #     it 'can report its total distance' do
    #         expect(@ride1.total_distance()).to eq(21.4)
    #         expect(@ride2.total_distance()).to eq(14.9)
    #     end
    # end
end