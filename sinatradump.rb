require 'rubygems'
require 'sinatra'

[:get, :put, :post, :delete, :options, :patch].each do |verb|
  send(verb, //) do
    content_type 'text/plain'
    "--------- ENV ---------\n" +
      (ENV.map {|k,v| "#{k}: #{v}\n"}.join("")) + 
      "\n\n\n--------- request.env ---------\n" +
      (request.env.map {|k,v| "#{k}: #{v}\n"}.join(""))
  end
end 
  