require 'rubygems'
require 'sinatra'

[:get, :put, :post, :delete, :options, :patch].each do |verb|
  send(verb, //) do
    content_type 'text/html'
    "<H1>ENV</H1><table border='1'>\n" +
      (ENV.keys.sort.map {|k| "<tr><th>#{k}</th><td>#{ENV[k]}</td></tr>\n"}.join("")) + 
      "</table><p><h1>request.env</h1><table border='1'>\n" +
      (request.env.keys.sort.map {|k| "<tr><th>#{k}</th><td>#{request.env[k]}</td></tr>\n"}.join("")) + "</table>"
      
  end
end 
  