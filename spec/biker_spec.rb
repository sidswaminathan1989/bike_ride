require 'spec_helper'

RSpec.describe Biker do
    before(:each) do
        @biker = Biker.new("Kenny", 30)
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@biker).to be_an_instance_of(Biker)
            expect(@biker.name).to eq("Kenny")
            expect(@biker.max_distance).to eq(30)
            expect(@biker.rides).to eq({})
            expect(@biker.acceptable_terrain).to eq([])
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