require'spec_helper'

describe Coach do 
  describe '#initialize' do 
    let(:coach) {Coach.new("Louis Van Gaal")}
    it "initializes the coach with a name" do 
      expect(coach.name).to eq("Louis Van Gaal")
    end
  end
end