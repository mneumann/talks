require 'wee'

class HelloWorld < Wee::Component
  def render; r.text "Hello World" end
end

Wee.run(HelloWorld)
