require 'rubygems'
require 'nokogiri'
require 'open-uri'

def townhall_page
	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
	return page
end


def get_townhall_email(townhall_url)
	town_array = []
	page = Nokogiri::HTML(open(townhall_url))

	email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
	town = page.xpath('/html/body/div/main/section[1]/div/div/div/h1').text

	town_array << {town => email}
	puts town_array
end


def get_townhall_url
	url_array = []
	page = townhall_page

	urls = page.xpath('//*[@class="lientxt"]/@href')

	urls.each do |url|
		url = "http://annuaire-des-mairies.com" + url.text[1..-1]
		url_array << url		
	end
	return url_array 
end

def perform
	url_array = get_townhall_url
	url_array.each do |townhall_url|
		get_townhall_email(townhall_url)
	end
end

perform

