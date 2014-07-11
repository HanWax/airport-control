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



#   let(:plane) { Plane.new }
  
#   it 'has a flying status when created' do
#   end
  
#   it 'has a flying status when in the air' do
#   end
  
#   it 'can take off' do
#   end
  
#   it 'changes its status to flying after taking of' do
#   end
# end

# # grand finale
# # Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# # Be careful of the weather, it could be stormy!
# # Check when all the planes have landed that they have the right status "landed"
# # Once all the planes are in the air again, check that they have the status of flying!
# describe "The gand finale (last spec)" do
#   it 'all planes can land and all planes can take off' do
#   end
# end