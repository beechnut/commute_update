source 'https://rubygems.org'

ruby '2.3.1'

gem 'sinatra'
gem 'sinatra-activerecord'

gem 'activerecord'
gem 'pg'             # Postgres database
gem 'enumerize'

gem 'activesupport'  # Inflectors, etc.
gem 'airbrake'       # Error notifications

gem 'logger'
gem 'wannabe_bool'
gem 'dotenv'
gem 'foreman'        # Process manager

gem 'phone'

group :test do
  gem 'minitest'       # Test framework
  gem 'minitest-focus' # One test at a time
  gem 'rack-test'
  gem 'database_cleaner'
  gem 'webmock',    require: false # Don't ping external services
  gem 'rb-fsevent', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
  gem 'codeclimate-test-reporter' # Test coverage
  gem 'rake' # Travis CI needs 'rake' listed
end

group :development do
  gem 'guard'          # Watch files for changes
  gem 'guard-minitest' # Autorun tests
  gem 'rerun'          # Reload Sinatra web app on changes
end
