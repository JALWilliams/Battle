require 'player'

describe Player do

  # we are just naming our subject so that it's easier to read in the file 
  subject(:charlotte) { Player.new('Charlotte') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

  describe "#recieve_damage" do
    it 'reduces a players points by 10' do
      expect { mittens.receive_damage }.to change { mittens.points }.by(-10)
    end
  end

  describe "#attack" do
    it 'reduces a players points by 10' do
      expect { mittens.attack(charlotte) }.to change { charlotte.points }.by(-10)
    end
  end

end