require'spec_helper'

describe Player do 
  describe '#initialize' do
    let(:player) {Player.new("Petr Cech")}
    it 'initializes the player with a name' do
      expect(player.name).to eq("Petr Cech")
    end
  end

end