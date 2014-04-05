module GachiRecord
end
$:.unshift File.dirname(__FILE__) 
require 'singleton'
require 'gachi_record/base'
require 'gachi_record/connection'
require 'mysql2'
