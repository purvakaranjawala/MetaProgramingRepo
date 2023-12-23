# ruby send_method_examle.rb
class SendTestExample
  attr_accessor :name, :goal, :contact

  # what attr_accessor does here internally setting and getting a value
  # def name
  #   @name
  # end
  # def name=(str)
  #   @name = str
  # end
end

object1 = SendTestExample.new
object1.name = "Hello"
# this is equivalulent to  
# object1.send("name=", "HelloWorld")
puts object1

# when we want to set bulk data then using send method within the loop

# class SendTestExample
#   attr_accessor :name, :contact, :goal

#   def initialize(args)
#     args.each { |key, value| send("#{key}=", value) }
#   end
# end

# hello = {name: "hello", contact: "1234", goal: "world"}
# good = {name: "good", contact: "2222", goal: "morning"}

# object1 = SendTest.new(hello)
# object2 = SendTest.new(good)
