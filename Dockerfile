FROM ruby:2.3

# Update packages
RUN apt-get update -qq && apt-get install -y build-essential mysql-client

# Create src directories
ENV SRC_DIR /src
RUN mkdir $SRC_DIR
WORKDIR $SRC_DIR

# Add gemfile
ADD Gemfile* $SRC_DIR/

# Install new gems
RUN bundle install

# Include our code
ADD . $SRC_DIR

# Run the server
ENTRYPOINT ["bundle", "exec"]
