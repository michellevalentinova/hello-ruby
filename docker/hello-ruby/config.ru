ENV["REDIS_HOST"] = ENV["HELLO_RUBY_REDIS_SERVICE_HOST"]
ENV["REDIS_PORT"] = ENV["HELLO_RUBY_REDIS_SERVICE_PORT"]

require './hello-world'
run Sinatra::Application
