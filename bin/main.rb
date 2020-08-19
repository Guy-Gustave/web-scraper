require_relative '../lib/scraper'

def introduction
  puts 'Welcome to this scraping interface'
  puts 'above are different posts available'
end

sc = Scraping.new
sc.scraper
