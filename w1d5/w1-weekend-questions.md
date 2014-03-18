### Question 1

## What is a Class vs an instance of a Class?

A class contains the instructions on how to make an object. 


### Question 2

## What is the difference between regular (local) variables and @instance variables?

Local variables are only accessable within the method that defines thems while @instance variables are able to be accessed by methods outside the original method that named and defiens the variable.

### Question 3

## What does attr_accessor do for us? What's an alternative to using attr_accessor which would achieve the same outcome?

'attr_accessor' sets an instance variable within our method to be defined. 

  def alt_variable_setter
    @alt_variable_setter
  end

  def alt_variable_setter = (defined_value)
    @alt_variable_setter = defeined_value
  end


### Question 4

## What is the purpose of the initialize method used in classes? Do you have to specify an initialize for one of your classes?

New objects look for the initialize method. 'initialize' is good for setting default variables.

Not necessary.


### Question 5

## Assuming a class Computer exists in our program, write out the one-line code to create an instance of it and have a variable called computer pointing to that instance.

'computer = Computer.new'