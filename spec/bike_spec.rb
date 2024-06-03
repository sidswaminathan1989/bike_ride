require 'spec_helper'

RSpec.describe Bike do
    before(:each) do
        @ride1 = Ride.new({
            name: "Walnut Creek Trail", 
            distance: 10.7, loop: false, 
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
            expect(@ride1).to be_an_instance_of(Bike)
            expect(@ride1.name).to be("Walnut Creek Trail")
            expect(@ride1.distance).to be(10.7)
            expect(@ride1.terrain).to be(:hills)
        end
    end

    describe '#loop?' do
        it 'can indicate if the ride is a loop or not' do
            expect(@ride.loop?()).to be(true)
        end
    end

    describe '#total_distance' do
        it 'can report its total distance' do
            expect(@ride.total_distance()).to eq(21.4)
        end
    end

    describe '#place' do
        it 'can place a ship on the board' do
            @board.place(@cruiser, ["A1", "A2", "A3"])
            expect(@board.cells["A1"].ship).to eq(@cruiser)
            expect(@board.cells["A2"].ship).to eq(@cruiser)
            expect(@board.cells["A3"].ship).to eq(@cruiser)
            expect(@board.cells["A4"].ship).to eq(nil)
        end

        it 'cant place a ship on the board if there is a ship there already' do
            @board.place(@cruiser, ["A1", "A2", "A3"])
            @board.place(@submarine, ["A1", "B1"])
            expect(@board.cells["A1"].ship).to eq(@cruiser)
        end
    end
end