# Enumerable comes by default with Ruby
module Enumerable
  def select
    arr = []
    each {|e| arr << e if yield e }
    return arr
  end

  def collect
    arr = []
    each {|e| arr << yield(e) }
    return arr
  end
end

class Sequence
  include Enumerable   # defines collect, select, reject...

  def initialize(from=1, to=nil)
    @from, @to = from, to
  end

  def each
    i = @from
    loop {
      yield i
      i += 1
      break if @to and i > @to
    }
  end
end

p Sequence.new(1,10).select{|i| i%2 == 0}.collect{|i| i**2}
