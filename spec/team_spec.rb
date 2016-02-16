require 'spec_helper'

describe Team do 
  let(:team) {Team.new("Arsenal")}
  it 'intializes with a team name' do 
    expect(team.name).to eq("Arsenal")
  end


end