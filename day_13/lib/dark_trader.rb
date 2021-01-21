require 'nokogiri'
require 'open-uri'

def get_name
	url = "https://coinmarketcap.com/all/views/all/"
	page = Nokogiri::HTML(URI.open(url))
	name = page.xpath('//*[@class="cmc-table-row"]//td[3]/div').map{|element| element.text}
	return name
end

def get_value
	url = "https://coinmarketcap.com/all/views/all/"
	page = Nokogiri::HTML(URI.open(url))
	value = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map{|element| element.text}
	return value.join.to_i
end

puts "#{get_value}"


def get_array_final(name,value)
	final_array = []
	name.each do |i|
	hash = {}
	hash[name[i]] = value[i]
	final_array << hash
	end
	return final_array
end

def dark_trader
	name = get_name
	value = get_value
	final_array = get_array_final(name,value)
	puts final_array
end

dark_trader
