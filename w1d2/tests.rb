require 'rspec'
require './max'

RSpec.configure do |config|
  config.color_enabled = true
end

describe "maximum" do 
  it "returns 42 when an array of 1, 42, 5, 30 are passed in" do
    maximum([2, 42, 22, 02]).should eq(42)
  end

  it "returns nil when empty array is passed in" do
    maximum([]).should be_nil
  end

  it "returns 0 when -23, 0, -3" do
    maximum([-23, 0, -3]).should eq(0)
  end

  it "returns 6 when just 6 is passed in" do
    maximum([6]).should eq(6)
  end
end
