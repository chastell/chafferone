require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require 'bogus/minitest/spec'
require 'chafferone'

Bogus.configure { |config| config.search_modules << Chafferone }
