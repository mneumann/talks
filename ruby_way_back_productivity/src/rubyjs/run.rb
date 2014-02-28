require 'server'

if __FILE__ == $0
  Mongrel::Configurator.new :host => '127.0.0.1' do
    listener :port => 3000 do
      uri "/", :handler => Mongrel::DirHandler.new('.', false)
      uri "/json", :handler => JsonHandler.new
      run
      join
    end
  end
end
