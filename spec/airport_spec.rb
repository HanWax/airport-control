require 'airport'
require 'plane'
require 'weather'

describe Airport do
  let(:airport)          {Airport.new   }
  let(:plane)            {Airplane.new  } 
  
  context 'upon initialisation' do 

    before(:each) do
      allow(airport).to receive(:stormy?).and_return(false)
    end

      it "should initialise with a set capacity" do
        expect(airport.capacity).to eq 30
      end

      it 'should be empty when created' do 
        expect(airport.planes).to be_empty
      end

      it 'should intialise with a name' do 
        expect(airport.name).to eq 'Heathrow'
      end 
  end 

  context 'taking off and landing' do

    before(:each) do
      allow(airport).to receive(:stormy?).and_return(false)
    end
      it 'should land a plane' do
        plane.takeoff! 
        airport.land(plane)
        expect(airport.planes).to eq([plane])
      end

      it 'should change the status of the plane to grounded once landed' do 
        plane.takeoff!
        airport.land(plane)
        expect(plane).not_to be_flying
      end 

      it 'should change the status of the plane to flying when cleared' do 
        airport.clear(plane)
        expect(plane).to be_flying
      end 

      it 'should clear a plane' do
        airport.clear(plane)
        expect(airport.planes).to be_empty
      end

      it 'should not land a plane when full' do
        airport.capacity.times{airport.land(plane)}
        expect{airport.land(plane)}.to raise_error(RuntimeError)
      end
    
  end 

  context 'accounting for weather conditions' do 
    
    before(:each) do
      allow(airport).to receive(:stormy?).and_return(true)

    end 

      it 'a plane cannot take off when there is a storm brewing' do
        expect{airport.clear(plane)}.to raise_error(RuntimeError)
      end
        
      it 'a plane cannot land in the middle of a storm' do
        expect{airport.land(plane)}.to raise_error(RuntimeError)
      end
  end

end

