require 'plane'

describe Airplane do

let(:plane) {Airplane.new}

  context 'things the plane should be initialised with' do

    it 'has a flying status when created' do 
      expect(plane.status).to eq DEFAULT_STATUS 
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

    it 'should know if it is flying' do 
      plane.takeoff! 
      expect(plane.status).to eq 'Flying'
    end

    it 'should know if it is grounded' do 
      plane.land!
      expect(plane.status).to eq 'Grounded'
    end

  end 
end 



