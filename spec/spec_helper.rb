require 'rspec'
require 'date'
require 'pry'


require './application'

RSpec.configure do |config|
	config.color = true
	config.tty = true
	config.formatter = :documentation
end