require 'httparty'
require 'nokogiri'

class Scraping
  attr_reader :url, :parsed_content, :job_description
  def initialize
    @url = 'https://remotive.io/remote-jobs/software-dev'
    @parsed_content = nil
    @job_description = []
  end

  def scraper()
    @parsed_content = parse_url(@url)
    @parsed_content.css('.job-list-item').css('.job-details').each do |job|
      position = job.css('.position').inner_text.gsub(/\s+/, '')
      company = job.css('.company').inner_text.gsub(/\s+/, '  ')
      details = []
      job.css('div.job-tags > a').each do |a|
        details << a.inner_text.gsub(/\s+/, '  ')
      end
      @job_description << position
      @job_description << company
      @job_description << details
    end
    testworks(@job_description)
  end
  
  def testworks(posts)
    posts.each { |post| puts post }
  end

  private

  def parse_url(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end
end
