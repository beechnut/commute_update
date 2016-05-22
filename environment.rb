require 'active_record'
require 'enumerize'
require 'erb'
require 'logger'
require 'yaml'
require 'wannabe_bool'
require 'dotenv'
require './config/initializers.rb'

RACK_ENV = ENV['RACK_ENV'] || 'development'

Initializers.load
Dotenv.load if %w( development production ).include?(RACK_ENV)

autoload_paths = ['./lib/**/*.rb', './apps', './apps/*.rb']
Dir.glob(autoload_paths).each { |file| require file }
