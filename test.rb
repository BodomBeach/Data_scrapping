require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

  page.css(".curreny-name-container").each do |node|
    p node.text
  end


# #id-bitcoin > td.no-wrap.currency-name > a
