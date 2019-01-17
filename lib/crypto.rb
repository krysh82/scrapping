require 'rubygems'
require 'nokogiri'
require 'open-uri'

page  = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
puts page.css("td[class=text-left col-symbol]").text


