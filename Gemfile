source 'https://rubygems.org'

# gem 'config' # Rails Config gem so we can use Settings.yml and its friends

gem 'pg' # Use Postgres as our database

# Use Jbuilder to generate JSON
# gem 'jbuilder', '~> 2.5'

# pry is useful for debugging, even in prod;  'binding.pry' in the code stops execution and gives a pry console
gem 'pry-byebug' # Adds step-by-step debugging and stack navigation capabilities to pry using byebug
gem 'pry-rails' # use pry as the rails console shell instead of IRB

gem 'puma', '~> 3.7' # app server
gem 'rails', '~> 5.1'

group :development, :test do
  gem 'rspec-rails', '~> 3.6' # avoid test code churn due to rspec-rails changes ?
  gem 'coveralls'
  gem 'rubocop', '~> 0.50.0' # avoid code churn due to rubocop changes
  gem 'rubocop-rspec', '~> 1.18.0' # avoid code churn due to rubocop-rspec changes
end

group :development do
  gem 'listen', '~> 3.1' # listens to file modifications and notifies you about the changes; rails wants it
end

group :deploy do
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'dlss-capistrano'
end
