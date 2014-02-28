require 'drb'

# The object that we want to be accessible from the client
ExposedObj = [1,2,3, [4,5,6], "test", proc { p "." }, proc {|i| i + 1}]

DRb.start_service('druby://localhost:3456', ExposedObj)
puts "Server started"
DRb.thread.join
