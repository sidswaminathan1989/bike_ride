require 'spec_helper'

RSpec.describe Biker do
    before(:each) do
        @biker = Biker.new("Kenny", 30)
        @ride1 = Ride.new({
            name: "Walnut Creek Trail", 
            distance: 10.7, 
            loop: false, 
            terrain: :hills
        })
        @ride2 = Ride.new({
            name: "Town Lake", 
            distance: 14.9, 
            loop: true, 
            terrain: :gravel
        })
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@biker).to be_an_instance_of(Biker)
            expect(@biker.name).to eq("Kenny")
            expect(@biker.max_distance).to eq(30)
            expect(@biker.rides).to eq({})
        end
    end

    describe '#learn_terrain!' do
        it 'has a list of acceptable terrain and can learn new terrain' do
            expect(@biker.acceptable_terrain).to eq([])
            @biker.learn_terrain!(:gravel)
            @biker.learn_terrain!(:hills)
            expect(@biker.acceptable_terrain).to eq([:gravel, :hills])
        end
    end

    # describe '#total_distance' do
    #     it 'can report its total distance' do
    #         expect(@ride1.total_distance()).to eq(21.4)
    #         expect(@ride2.total_distance()).to eq(14.9)
    #     end
    # end
end