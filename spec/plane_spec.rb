require 'plane'

describe Airplane do

let(:plane)          {Airplane.new     }
let(:airport)        {double :airport  }  

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
      plane.takeoff!
      plane.land! 
      expect(plane.status).to eq 'Grounded'
      expect(plane).to be_grounded
    end 
  end 

  context 'things the plane can do' do

    it 'can takeoff' do
      plane.takeoff!
      expect(plane).to be_flying
    end 

    it 'can only takeoff if it is grounded' do 
      plane.takeoff!
      expect(plane).to be_flying
      expect{plane.takeoff!}.to raise_error(RuntimeError)
    end 

    it 'can land' do 
      plane.takeoff!
      plane.land!
      expect(plane).not_to be_flying
    end 

    it 'can only land if it is flying' do 
      expect(plane).not_to be_flying
      expect{plane.land!}.to raise_error(RuntimeError)
    end 
    
  end 
end 



