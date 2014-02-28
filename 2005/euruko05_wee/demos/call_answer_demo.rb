require 'wee'

class Counter < Wee::Component
  def initialize; @cnt = 0; super end
  def render
    r.anchor.callback(:dec).with('--')
    r.text " #{ @cnt } "
    r.anchor.callback(:inc).with('++')
  end
  def dec
    if @cnt == 0
      call MessageBox.new('Go Negative?'),
      proc {|cond| @cnt -= 1 if cond }
    else
      @cnt -= 1
    end
  end
  def inc; @cnt += 1 end
end

class MessageBox < Wee::Component
  def initialize(title)
    @title = title; super()
  end
  def render
    r.form do
      r.h1 @title
      r.submit_button.value('YES').
      callback(:answer, true)
      r.submit_button.value('NO').
      callback(:answer, false)
    end
  end
end

Wee.run(Counter)
