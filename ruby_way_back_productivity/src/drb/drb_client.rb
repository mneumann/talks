require 'drb'

DRb.start_service

# A reference to the remote object (which resides on the server)
$remote_obj = DRbObject.new(nil, 'druby://localhost:3456')

p $remote_obj.last.call(1) # => 1 + 1 = 2

# Enter interactive Ruby to play a bit more...
require 'irb'; IRB.start
