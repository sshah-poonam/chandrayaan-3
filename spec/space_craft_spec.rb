require_relative '../space_craft'

describe Spacecraft do
  context '#execute' do

    context 'individual commands' do
      let(:spacecraft) { Spacecraft.new }

      it 'should moves forward' do
        spacecraft.move('f')
        expect(spacecraft.coordinates).to eq([0, 1, 0])
      end

      it 'should moves backward' do
        spacecraft.move('b')
        expect(spacecraft.coordinates).to eq([0, -1, 0])
      end

      it 'should turns right' do
        spacecraft.move('r')
        expect(spacecraft.coordinates).to eq([0, 0, 0])
        expect(spacecraft.direction).to eq('E')
      end

      it 'should turns left' do
        spacecraft.move('l')
        expect(spacecraft.coordinates).to eq([0, 0, 0])
        expect(spacecraft.direction).to eq('W')
      end

      it 'should turns up' do
        spacecraft.move('u')
        expect(spacecraft.coordinates).to eq([0, 0, 0])
        expect(spacecraft.direction).to eq('U')
      end

      it 'should turns down' do
        spacecraft.move('d')
        expect(spacecraft.coordinates).to eq([0, 0, 0])
        expect(spacecraft.direction).to eq('D')
      end
    end
  end
end
