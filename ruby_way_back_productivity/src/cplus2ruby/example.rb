require 'cplus2ruby'

class NeuralEntity < Cplus2Ruby_
  property :id
end

class Neuron < NeuralEntity
  property :potential,       'float'
  property :pre_synapses

  def initialize
    self.pre_synapses = []
  end

  method_c :stimulate, {at: 'float', weight: 'float'}, %{
    // This is C++ Code
    @potential += at * weight;
  }
end

Cplus2Ruby.compile_and_load('inspire') 
n = Neuron.new
n.potential = 1.0
n.stimulate(1.0, 2.0)
p n.potential # => 3.0
