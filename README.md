# Hello Rabbit(MQ)

### Description
This project consists of two scripts that act as the sending & receiving clients for messages that come in via the 'hello' queue.

### Setup
1. Ensure you have a RabbitMQ server running ([click here for installation instructions](https://www.rabbitmq.com/download.html))
2. Run `git clone https://github.com/CodingTea17/hello-rabbitMQ.git && cd hello-rabbitMQ`
3. Execute `bundle install` to install the rabbit gem
4. Try it out by running `ruby receive.rb` in one terminal window and `ruby send.rb` in another. (Be sure to fire up the consumer client "receive.rb" before the producer script)

### License

*This project is licensed under the MIT License*

**_© 2018 Dawson Mortenson ALL Bananas Reserved 🍌🍌🍌_**
