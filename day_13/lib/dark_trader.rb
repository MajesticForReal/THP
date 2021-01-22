require 'nokogiri'
require 'open-uri'

def get_name
	url = "https://coinmarketcap.com/all/views/all/"
	page = Nokogiri::HTML(URI.open(url))
	name = page.xpath('//*[@class="cmc-table-row"]//td[3]/div').map{|element| element.text}
	return name
end

#Recuperation des noms de devise.

def get_value
	url = "https://coinmarketcap.com/all/views/all/"
	page = Nokogiri::HTML(URI.open(url))
	value = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map{|element| element.text}
	return value
end

#Recuperation de la valeur des devises.

def get_array_final(name,value)
	hash_final = Hash[name.zip(value.map)]
	return hash_final
end

#Association des devises et les valeurs.

def dark_trader
	get_name
	puts "Recuperation des noms de devise ..."
	get_value
	puts "Recuperation de la valeur des devises ..."
	array_final = get_array_final(get_name,get_value)
	puts "Assemblage des donnees ..."
	puts array_final
end

#Fonctionnement des methodes et execution.

dark_trader
