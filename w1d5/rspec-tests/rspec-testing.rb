

#-----------------
# First test
#-----------------


# describe Hash do
#   it "should return a blank instance" do
#     Hash.new.should == {}
#   end
# end


#-----------------
# Second test
#-----------------

# # Oddly, this test doesn't work. Blargh! Am I missing something?

# describe Hash do
#   before do
#     @hash = Hash.new({:hello => 'world'})
#   end

# # This modified test does make this thing work, though. Ask in class.
# describe Hash do
#   before do
#     @hash = Hash.new
#     @hash = {:hello => 'world'}
#   end

#   it "should return a blank instance" do
#     Hash.new.should == {}
#   end
 
#   it "hash the correct information in a key" do
#     @hash[:hello].should == 'world'
#   end
# end


#-----------------
# Third test
#-----------------

class Burger
  attr_reader :options
 
  def initialize(options={})
    @options = options
  end
 
  def apply_ketchup
    @ketchup = @options[:ketchup]
  end
 
  def has_ketchup_on_it?
    @ketchup
  end
end
 
 
describe Burger do
  describe "#apply_ketchup" do
    subject { burger }
    before  { burger.apply_ketchup }
 
    context "with ketchup" do
      let(:burger) { Burger.new(:ketchup => true) }
 
      it { should have_ketchup_on_it }
    end
 
    context "without ketchup" do
      let(:burger) { Burger.new(:ketchup => false) }
 
      it { should_not have_ketchup_on_it }
    end
  end
end
