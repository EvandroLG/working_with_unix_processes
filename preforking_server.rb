require 'socket'

socket = TCPServer.open('0.0.0.0', 8080)

[:INT, :QUIT].each do |signal|
  Signal.trap(signal) do
    wpids.each { |wpid| Process.kill(signal, wpid) }
  end
end

wpids = []

5.times do
  wpids << fork do
    loop {
      connection = socket.accept
      connection.puts 'Hello there!'
      connection.close
    }
  end
end

Process.waitall
