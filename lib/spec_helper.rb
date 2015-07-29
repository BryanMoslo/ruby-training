require 'minitest/spec'
require 'minitest/autorun'
Dir["./lib/ext/*.rb"].each {|file| require file }
Dir["./lib/*.rb"].each {|file| require file }
