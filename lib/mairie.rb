require 'rubygems'
require 'nokogiri'
require 'open-uri'


page  = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html")) 

# get elements of the site
cities = page.xpath('//*[@class="lientxt"]').text


cities_array = []
cities_array.each {|items| cities_array << items}

puts cities


