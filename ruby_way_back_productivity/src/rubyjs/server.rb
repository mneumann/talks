require 'mongrel'
require 'json'

class JsonHandler < Mongrel::HttpHandler
  def process(request, response)
    response.start(200) do |header, output|
      output << JSON.dump([{"Hello" => "rubyconf"}])
    end
  end
end
