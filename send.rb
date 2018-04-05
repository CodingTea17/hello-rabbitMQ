require 'bunny'

# Define a new connection to the RabbitMQ Server
# Bunny.new(hostname: 'rabbit.local')
connection = Bunny.new
connection.start

# Create a channel to utilize API calls
channel = conneciton.create_channel

# Create queue
queue = channel.queue('hello')

# Define a message to send
message = 'Hello Rabbit!'

# Send the message
channel.default_exchange.publish(message, routing_key: queue.name)
puts " [x] Sent '#{message}'"

# Terminate the connection
connection.close
