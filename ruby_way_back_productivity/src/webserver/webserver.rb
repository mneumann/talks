require 'socket'
server = TCPServer.new('localhost', 9000)
puts "Listening on localhost:9000"
loop do
  Thread.new(server.accept) {|socket|
    begin
      if socket.gets =~ /^GET \/([^\s]*) HTTP/
        socket << "HTTP/1.0 200 OK\r\n\r\n" + File.read($1)
      end
    ensure
      socket.close
    end
  }
end
