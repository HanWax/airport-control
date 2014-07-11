require 'airport'
require 'plane'

describe Airport do
  let(:airport)       { Airport.new                        }
  let(:grounded_plane)   {double :airplane, status: 'Grounded'}
  let(:flying_plane)     {double :airplane, status: 'Flying'  }
  let(:plane)            {double :airplane} 

  context 'taking off and landing' do 

    it "should initialise with a set capacity" do
      expect(airport.capacity).to eq 50
    end

    it 'should be empty when created' do 
      expect(airport.planes).to be_empty
    end

    it 'should ground a plane' do
      airport.ground(plane)
      expect(airport.planes).to eq([plane])
    end

    it 'should clear a plane' do 
      airport.clear(plane)
      expect(airport.planes).to be_empty
    end

  end

  context 'traffic control' do 

    it 'should not ground a plane when full' do
      50.times{airport.ground(plane)}
      expect{ airport.ground(plane) }.to raise_error(RuntimeError)
    end

  end 
  
end

