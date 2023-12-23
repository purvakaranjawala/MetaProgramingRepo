
class UserAction
  def perform(action)
    puts "User is #{action}ing."
  end
end
a = UserAction.new
a.perform('eat')
a.perform('Sleep')
a.perform('walk')

# but here perform method is very generic which doesn't declare what particular action is user performing.

# Then how to re-write this so that the code becomes more declarative by following principles of DRY.

class UserAction
  %w[eat sleep walk].each do |action|
    define_method(action) do
      puts "User is #{action}ing. "
    end
  end
end
a = UserAction.new
a.eat    # User is eating
a.sleep  # user is sleeping
