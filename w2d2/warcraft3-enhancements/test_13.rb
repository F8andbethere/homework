require_relative 'spec_helper.rb'

# Dead Unit cannot attack another Unit
# Alive Unit will not attack a dead Unit

describe Unit do

  subject(:alive_unit) {Unit.new(100, 10)}
  let(:dead_unit) {Unit.new(0, 10)}

  it "will not attack if dead" do
    expect(dead_unit.attack!(alive_unit)).to eq(false)
  end

  it "will not attack a dead Unit" do
    expect(alive_unit.attack!(dead_unit)).to eq(false)
  end

end
