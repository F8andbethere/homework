### Question Set 1

#### a. What is a class method?

A class method is a method called on a class and resides durectly on the class and is called directly on that class.

#### b. How is a class method different from an instance method?

A class method cannot be called on an instance of that method.

Instance methods act on a particular object instantiated from the class. They have access to instnce variables and other instnance methods in that class. They can also access class methods and variables.

Since class methods act directly on a class and not an instance, there's no way or need for them to access instance variables or methods.

#### c. What's the difference between how you declare a class method vs an instance method?

You need to put a 'self.' before defining a method in the class or using the class name. ie. "Class.method(argument)"

OR 

class << self
  def do_something_again(x)
  end

  def do_something_again1(x)
  end

  def do_something_again2(x)
  end
end

#### d. What's the difference between how you call a class method vs an instance method?

No difference. Just depends on what you call the method on.



### Question Set 2

#### Given the following code:

    class User

      attr_accessor :id, :name, :email
      @@users = []

      def initialize(name, email)
        @name = name
        @email = email
      end

      def self.find(email) # aka: def User.find(email)
        @@users.select {|c| c.email == email }
      end

      def self.create(name, email)  # aka: def User.create(name, email)
        c = new(name, email)
        @@users.push c
        c
      end

      def self.all # aka: def User.all
        @@users
      end

    end

#### a. Explain what the code is providing us

The method is making an empty array that will eventually contain users and their email addresses. Making more instanes of the User class adds more entries to the @@users array which then can be listed by 'User.all' or an email searched for by 'User.find(username)'

Providing us with a new class called 'User' that is representented by name and email. We can create, list and find users within our program.

#### b. What types of methods are `find` and `create`?

They are both class methods.

#### c. How would you call the `find` and `create` methods?

'User.find' and 'User.create(name, email)'

#### d. What would you expect to happen if you instantiate a user and then call `all` on it? Like so:

    u = User.new("KV", "kv@gmail.com")
    u.all

Nothing, the '.all' method is a class method, not an instance method.

NoMethodError would be raised.

#### e. What if you do this instead?

    u = User.new("KV", "kv@gmail.com")
    u.class.all

An empty array is produced, but the method exists for the User class.






**Tip:** To quickly experiment with the code, try pasting the entire `class` definition above into `pry` or `irb` and then running the 2 lines of code in questions 'd' and 'e' to use the `class` instead, if you'd like.

### Question Set 3

#### a. Name two or more methods that are available on the `Object` class

.class
.freeze
.hash
.inspect
.trust



#### b. What does it mean to other classes (since they all eventually inherit from `Object`)?

Other classes also have those methods.

Some of these give you functionality out of the box, others you would want to overwrite, such as 'to_s'





