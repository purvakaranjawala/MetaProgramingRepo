# ruby method_missing_example.rb

class Animal
  def method_missing(method, *args, &block)
    return super(method, *args, &block) unless method.to_s.include?("fly")

    self.class.send(:define_method, method) do
      puts "#{method} can't fly"
    end
    self.send method, *args, &block
  end

  def can_walk
    puts 'Yes walking'
  end
end

Animal.new.goat_can_fly?
