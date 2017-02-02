FROM ruby:2.3

# Update packages
RUN apt-get update -qq && apt-get install -y build-essential mysql-client

# Create src directories
ENV SRC_DIR /src
RUN mkdir $SRC_DIR
WORKDIR $SRC_DIR

# Add Gemfile, gemspec and lib
ADD lib/ $SRC_DIR/lib
ADD Gemfile* $SRC_DIR
ADD *.gemspec $SRC_DIR

# Install gems
RUN bundle install --jobs 7

# Include our code
ADD . $SRC_DIR

# Run the server
ENTRYPOINT ["bundle", "exec"]
