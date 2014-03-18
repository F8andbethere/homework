
STEPS FOR TDD, WRITING YOUR OWN TESTS

person_spec.rb

require 'rspec'
require './person'

describe Person

end

TEST FAILS

make person.eb

TEST FAILS

in person.rb make Person class, empty

TEST IS GOOD

describe Person

  describe "initialization" do

  it "take in firstname, lastname and title (3 attributes)" do
    Person.new("Khurram", "Virani", "Gang'sta")
  end
end

TEST FAILS

Go and define an initialize method in person.rb

class Person

  def initialize (firstname, lastname, title)
  end

end

TEST IS GUUUUUUD

describe Person

  describe "initialization" do

  it "take in firstname, lastname and title (3 attributes)" do
    Person.new("Khurram", "Virani", "Gang'sta")
  end

  it "assigns firstname correctly" do
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.firstname.should eq("Khurram")
  end
end

TEST FAILS

class Person

  attr_accessor :firstname

  def initialize (firstname, lastname, title)
  end

end

TEST FAILS

class Person

  attr_accessor :firstname

  def initialize (firstname, lastname, title)
    @firstname = firstname
  end

end

TEST PASSES

describe Person

  describe "initialization" do

  it "take in firstname, lastname and title (3 attributes)" do
    Person.new("Khurram", "Virani", "Gang'sta")
  end

  it "assigns firstname correctly" do
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.firstname.should eq("Khurram")
  end

  it "assigns lastname correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.lastname.should eq("Virani")
  end
end

TEST FAILS

class Person

  attr_accessor :firstname, :lastname

  def initialize (firstname, lastname, title)
    @firstname = firstname
    @lastname = lastname
  end

end

TEST PASSES

describe Person

  describe "initialization" do

  it "take in firstname, lastname and title (3 attributes)" do
    Person.new("Khurram", "Virani", "Gang'sta")
  end

  it "assigns firstname correctly" do
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.firstname.should eq("Khurram")
  end

  it "assigns lastname correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.lastname.should eq("Virani")
  end

  it "assigns title correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.title.should eq("Gang'sta")
  end
end

TEST FAILS

class Person

  attr_accessor :firstname, :lastname, :title

  def initialize (firstname, lastname, title)
    @firstname = firstname
    @lastname = lastname
    @title = title
  end
end

TEST PASSES

describe Person

  describe "initialization" do

  it "take in firstname, lastname and title (3 attributes)" do
    Person.new("Khurram", "Virani", "Gang'sta")
  end

  it "assigns firstname correctly" do
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.firstname.should eq("Khurram")
  end

  it "assigns lastname correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.lastname.should eq("Virani")
  end

  it "assigns title correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.title.should eq("Gang'sta")
  end
end

describe "#name" do

  it "concatenates 'Khurram' and 'Virani' to return 'Khurram Virani'"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.name.should eq("Khurram Virani")
  end

end

TEST FAILS

class Person

  attr_accessor :firstname, :lastname, :title

  def initialize (firstname, lastname, title)
    @firstname = firstname
    @lastname = lastname
    @title = title
  end

  def name
  end

end

TEST FAILS

class Person

  attr_accessor :firstname, :lastname, :title

  def initialize (firstname, lastname, title)
    @firstname = firstname
    @lastname = lastname
    @title = title
  end

  def name
    "#{@firstname} #{@lastname}"
  end

end

TEST PASSES

describe Person

  describe "initialization" do

  it "take in firstname, lastname and title (3 attributes)" do
    Person.new("Khurram", "Virani", "Gang'sta")
  end

  it "assigns firstname correctly" do
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.firstname.should eq("Khurram")
  end

  it "assigns lastname correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.lastname.should eq("Virani")
  end

  it "assigns title correctly"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.title.should eq("Gang'sta")
  end
end

describe "#name" do

  it "concatenates 'Khurram' and 'Virani' to return 'Khurram Virani'"
    p = Person.new("Khurram", "Virani", "Gang'sta")
    p.name.should eq("Khurram Virani")
  end

  it "returns 'Khurram' when there is no last name" do
    p = Person.new("Khurram", nil, "Gang'sta")
    p.name.should eq("Khurram")
    expect(p.name).to eq("Khurram") #the same!
    end
  end

end

TEST FAILS

class Person

  attr_accessor :firstname, :lastname, :title

  def initialize (firstname, lastname, title)
    @firstname = firstname
    @lastname = lastname
    @title = title
  end

  def name
    "#{@firstname} #{@lastname}".strip
  end

end

TEST PASSES


Make doctor_spec.rb


require 'rspec'
require './person'
require './doctor'  

TEST FAILS

Make doctor.rb


require './person'

class Doctor
end


TEST PASSES

require 'rspec'
require './person'
require './doctor'  

describe Doctor do
  
  it "inherits from Person" do
    d = Doctor.new("Melissa", "Hubert", "Bada$$")
    d.should be_a(Person)
  end
end

TEST FAILS

require './person'

class Doctor < Person
end

TEST PASSES

require 'rspec'
require './person'
require './doctor'  

describe Doctor do
  
  it "inherits from Person" do
    d = Doctor.new("Melissa", "Hubert", "Bada$$")
    d.should be_a(Person)
  end

  describe "#name" do
    it "should add Dr. to the beginning of the person's name" do
    d = Doctor.new("Melissa", "Hubert", "Bada$$")
    expect(d.name).to eq("Dr. Melissa Hubert")
  end

end

TEST FAILS

require './person'

class Doctor < Person

  def name
    "Dr. #{@firstname} #{@lastname}"
  end

end

TEST PASSES

require './person'

class Doctor < Person

  def name
    "Dr. #{super}"
  end

end

TEST PASSES






