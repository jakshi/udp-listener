require 'socket'
host = 'localhost'
port = 12201
packet_length = 1024
s = UDPSocket.new
s.bind(nil, port)
loop do
  text, sender = s.recvfrom(packet_length)
  remote_host = sender[3]
  puts "#{remote_host} sent #{text}"
end
