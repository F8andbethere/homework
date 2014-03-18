### Question Set 1

#### a. What is an instance variable?

Scope is the entire object. From anywhere within that class, you can reference that piece of information.

By anywhere we are referring to instance methods only.

#### b. What's the difference between an instance variable and a 'regular' variable?

See 'a' for instance variable, regular variables are only accessable within methods. Essentially a difference of scope.

Regular variables would only be applicable to their method and be erased after the method has returned.

### Question Set 2

#### a. What are "getter" and "setter" methods used for?

They allow instance variables to be shared outside of the class, either by "seeing" them and/or setting values.

#### b. What is the difference between a "getter" and a "setter" method?

Getter methods expose instance variables to be seen outside of the class instance.

Without these you cannot manipulate the state of a class from the outside.

Setter methods allow instance variable values to be set from outside the class instance.

#### c. How do you make instance variables readable outside your class? Writeable? Both at the same time?

attr_reader
attr_writer
attr_accessor

### Question Set 3

#### a. How do you inherit a class? What does that mean?

Using this nifty '<' where the child class is on the left and the parent class being inherited from is on the right. Inheriting attributes from a parent means that the child class has access to all the methods and variables of the parent. The parent's more generic and the child is a specialized version of the parent.


Child class has access to all methods and attributes of the parent.

#### b. What does it mean to overwrite a parent's method?

The child class can overwrite default values or default methods set by the parent.

It overwrites the method if it was defined up above (in the parent).

#### c. What does Ruby do when you call a method on an object but that method is not defined on the object?

Searches up the line of inheritence and if still cannot find that method sends a NoMethodError.

### Question Set 4

#### a. What does super do?

Super overwrites the default settings of the parent.

#### b. Why use it?

Child classes being specialized versions of the parent class might require a change in the default values.






array_with_a_hash.sort do |first_sorter, second_sorter|
  [first_sorter[:years_of_experience], first_sorter[:github_points]] <=>
  [second_sorter[:years_of_experience], second_sorter[:github_points]]
end


array_with_hashes.sort do |first_sorting_var, second_sorting_var| 
  [first_sorting_var[:first_key], first_sorting_var[:second_key], third_key] <=>
  [second_sorting_var[:first_key], second_sorting_var[:second_key], third_key]
end
























