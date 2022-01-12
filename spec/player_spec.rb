require 'player'

describe Player do

  # we are just naming our subject so that it's easier to read in the file 
  subject(:charlotte) { Player.new('Charlotte') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

end