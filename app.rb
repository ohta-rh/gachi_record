$:.unshift File.dirname(__FILE__) 
require 'lib/gachi_record'
require 'models/user'

u = User.find 1

p u.name
p u.email
p u.password

