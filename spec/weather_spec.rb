require './lib/weather.rb'

 shared_examples 'weather conditions' do 
  let(:weather) {described_class.new}

    it 'can be stormy' do
      allow(weather).to receive(:rand).and_return(0)
      expect(weather).to be_stormy
    end

    it 'can be sunny' do
      allow(weather).to receive(:rand).and_return(1)
      expect(weather).not_to be_stormy 
    end
  end