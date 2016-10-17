FROM nandi108/nginx

# system configuration
ADD hello-ruby.conf /etc/nginx/conf.d/hello-ruby.conf
ADD supervisord.conf /etc/

# application + configuration
ADD hello-world.rb /app/hello-world.rb
ADD config.ru /app/config.ru
WORKDIR /app/

# chain all runs to avoid creating intermediary filesystem layers as we add some packages temporarily for build only
RUN \
	# run an update and then add standard packages that will be always in the container
	apk --update --no-cache add ruby supervisor ca-certificates && \

	# add packages that are necessary only to build gems, later on removed
	apk --no-cache add ruby-dev gcc libc-dev make linux-headers && \

	gem install redis sinatra puma --no-rdoc --no-ri && \

	# remove packages required for build only
	apk del ruby-dev gcc libc-dev make linux-headers && \

	rm -f /etc/nginx/conf.d/default.conf


CMD ["supervisord"]
