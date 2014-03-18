require_relative 'spec_helper'

# A Barracks can start off with 500 lumber.

describe Barracks do

  subject {Barracks.new}

  it "has a lumber variable of 500" do
    expect(subject.lumber).to eq(500)
  end
end