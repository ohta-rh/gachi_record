module GachiRecord
end
$:.unshift File.dirname(__FILE__) 
require 'singleton'
require 'yaml'
require 'gachi_record/result'
require 'gachi_record/base'
require 'gachi_record/connection'
require 'mysql2'
Mysql2::Client.default_query_options.merge!(symbolize_keys: true)
