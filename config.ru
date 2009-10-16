require 'rubygems'
require 'sinatra'
require 'rack-uploads'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => ENV['RACK_ENV']
)

require 'uploads'
run Sinatra::Application
