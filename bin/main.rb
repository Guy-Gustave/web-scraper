require './lib/scraper.rb'
require 'csv'

def intrduction
  puts 'Welcome to this scraping interface'
  puts 'above are different posts available'
end
# new_file = CSV.open('Scraping.csv', 'a+')
# new_file << %w[job-details]
scrap = Scraping.new
scrap.scraper
intrduction
