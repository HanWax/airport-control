require 'plane'

describe Airplane do

let(:plane)          {Airplane.new   }
let(:airport)        {double :airport}

  context 'things the plane should be initialised with' do

    it 'has a flying status when created' do 
      expect(plane.status).to eq DEFAULT_STATUS 
    end
  end

  context 'airplane status' do
    it 'should know if it is flying' do 
      plane.takeoff! 
      expect(plane.status).to eq 'Flying'
    end

    it 'should know if it is grounded' do 
      plane.land!
      expect(plane.status).to eq 'Grounded'
    end 
  end 

  context 'things the plane can do' do

    it 'can takeoff' do
      plane.takeoff!
      expect(plane).to be_flying
    end 

    it 'can land' do 
      plane.land!
      expect(plane).not_to be_flying
    end 


    # it 'can request permission from the airport for takeoff' do 
    #   expect(STDOUT).to receive(:puts).with("Requesting the all clear for takeoff")
    # end 

    # it 'can takeoff from the airport' do
    #   plane.land_on(airport)
    #   expect(plane).to receive(request_permission_for_takeoff)
    #   expect(airport).to receive(:clear).with(:plane)
    #   plane.takeoff_from(airport) 
    # end 

    # it 'can request permission from the airport to land' do 
    #   expect(STDOUT).to receive(:puts).with("Requesting the all clear for landing")
    # end 

    # it 'can land into the airport' do 
    #   plane.takeoff_from(airport)
    #   expect(plane).to receive(request_permission_for_landing)
    #   expect(airport).to receive(:clear).with(:plane)
    #   plane.land_on(airport)
    # end 
    
  end 
end 



