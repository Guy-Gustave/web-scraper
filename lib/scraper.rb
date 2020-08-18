require 'open-uri'
require 'nokogiri'

class Scraping
  attr_reader :url, :parsed_content
  def initialize
    @url = 'https://remotive.io/remote-jobs/software-dev'
    @parsed_content = nil
  end

  def scraper
    document = open(url)
    content = document.read
    parsed_content = Nokogiri::HTML(content)
    parsed_content.css('.job-list-item').css('.job-details').each do |job|
      # job_description = []
      position = job.css('.position').inner_text.gsub(/\s+/, '')
      company = job.css('.company').inner_text.gsub(/\s+/, '  ')
      details = job.css('.job-tags').inner_text.gsub(/\s+/, ' ')
      p "job_description: #{position} , from #{company}, job details: #{details}"
      p '______________________________________________________________________________________________________________'
    end
  end
end

sc = Scraping.new
sc.scraper
