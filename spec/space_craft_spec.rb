require_relative '../space_craft'

describe Spacecraft do
  context '#execute' do

    context 'individual commands' do
      let(:spacecraft) { Spacecraft.new }

      it 'should moves forward' do
        spacecraft.move('f')
        expect(spacecraft.coordinates).to eq([0, 1, 0])
      end
    end
  end
end
