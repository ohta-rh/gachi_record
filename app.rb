$:.unshift File.dirname(__FILE__) 
require 'lib/gachi_record'
require 'models/user'

User.find 1

