require 'rubygems'
require 'nokogiri'
require 'open-uri'

page  = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
# get elements of the site
		
symbol = page.xpath('//*[@class="text-left col-symbol"]')
price = page.xpath('//*[@class="price"]')


 #creat empty array
symbol_array = []
price_array = []

# insert elements in array
symbol.each {|items| symbol_array << items.text}
price.each {|elemt| price_array << elemt.text[1..-1].to_f}

a = []
symbol_array.each_with_index do |items, index|
	a << {items => price_array[index]}
end
puts a
