require './lib/scraper.rb'
require 'csv'

def intrduction
  puts 'Welcome to this scraping interface'
  puts 'above are different posts available'
end
scrap = Scraping.new
scrap.scraper
intrduction
