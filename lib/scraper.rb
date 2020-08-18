require 'httparty'
require 'nokogiri'

class Scraping
  attr_reader :url, :parsed_content
  def initialize
    @url = 'https://remotive.io/remote-jobs/software-dev'
    @parsed_content = nil
  end

  def scraper()
    @parsed_content = parse_url(@url)
    @parsed_content.css('.job-list-item').css('.job-details').each do |job|
      # job_description = []
      position = job.css('.position').inner_text.gsub(/\s+/, '')
      company = job.css('.company').inner_text.gsub(/\s+/, '  ')
      details = job.css('.job-tags').inner_text.gsub(/\s+/, ' ')
      p "job_description: #{position} , from #{company}, job details: #{details}"
      p '______________________________________________________________________________________________________________'
    end
  end

  private

  def parse_url(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end
end
# s = Scraping.new
# s.scraper
