# Inside class definition, self refers to class.

class Developer
  p self
end
# Developer

# Inside instance methods, self refers to an instance of the class.

class Developer
  def frontend
    self
  end
end
p Developer.new.frontend

# #<Developer:0x2c8a148>

# Inside class methods, self refers to the class itself in a way (which will be discussed in more detail later in this article):

class Developer
  def self.backend
    self
  end
end
p Developer.backend
#Developer


class Developer
  def backend
    puts "I am backend Developer"
  end

  def self.frontend
    puts "I am a frontend Developer"
  end
end
# Hacks for checking methods

Developer.instance_methods
Developer.singleton_class
Developer.singleton_class.instance_methods

Developer.singleton_class.ancestors
=> [#<Class:Developer>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, PP::ObjectMixin, Kernel, BasicObject]
