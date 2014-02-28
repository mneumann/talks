require 'rwt/DOM'
require 'rwt/HTTPRequest'
require 'json'

class HelloWorld
  def self.main
    out = DOM.getElementById('out')
    HTTPRequest.asyncGet('/json') do |response|
      DOM.setInnerText(out, JSON.load(response).inspect)
    end
  end
end
