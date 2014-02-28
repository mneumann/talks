class Test
end

# instanciate a new "Test"
obj = Test.new

# treat classes like objects
[Test, String, Array].each do |klass|
  p klass.new
end

# create a class "by hand"
klass = Class.new
p klass.class      # => Class
