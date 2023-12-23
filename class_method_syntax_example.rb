# syntaxes to define class methods...
# first way
class Foo
  def self.hello1
    'hello'
  end
end

# 2nd Way
class Foo
  def self.hello2
    'hello'
  end
end

# 3rd way
class Foo
  class << self
    def hello3
      'hello'
    end
  end
end
