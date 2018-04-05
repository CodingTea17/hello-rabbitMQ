require 'bunny'


connection = Bunny.new
connection.start

channel = connection.create_channel

queue_name = 'hello'
queue = channel.queue(queue_name)

begin
  puts " [*] Awaiting transmission from the #{queue_name} queue"
  # Subscribe to the queue and print out a confirmation when a message is received
  queue.subscribe(block: true) do |_delivery_info, _properties, body|
    puts " [x] Received #{body}"
  end

rescue Interupt => _
  connection.close
  exit(0)
end
