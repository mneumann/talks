require 'wee'

class HelloWorld < Wee::Component
  def render
    r.h1.onclick_callback { @v = !@v }.with {
      r.text(@v ? "Bye bye world" : "Hello world")
    }
  end
end

Wee.run(HelloWorld)
