require 'open-uri'
require 'nokogiri'

def scraper
  url = 'https://remotive.io/remote-jobs/software-dev'
  document = open(url)
  content = document.read
  parsed_content = Nokogiri::HTML(content)
  parsed_content.css('.job-list-item').css('.job-details').each do |job|
    # job_description = []
    position = job.css('.position').inner_text
    company = job.css('.company').inner_text
    details = job.css('.job-tags').inner_text
    p "job_description: #{position} , from #{company}, job details: #{details}"
    p '___________________________________________________'
  end
end
scraper