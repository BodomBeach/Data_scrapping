require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

@page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

def get_stock
  info = []
  n = 0
  currencies = []
  values = []
  @page.css(".currency-name-container").each do |currency|
    currencies << currency.text
  end

  @page.css(".price").each do |value|
    values << value.text
  end

  while n < 50 #@page.css(".price").length
    info[n] = {:currency => currencies[n], :value => values[n]}
    n +=1
  end
  puts info
end

def update_stock
  while 1 == 1 do
    get_stock
    sleep 3600
  end
end

update_stock
