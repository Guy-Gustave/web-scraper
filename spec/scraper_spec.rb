require './lib/scraper.rb'

describe Scraping do
  let(:scrap) { Scraping.new }
  describe '#initialize' do
    it 'initialize url to string value' do
      expect(scrap.url).to be_a(String)
    end
    it 'initialize parsed_content to nil' do
      expect(scrap.parsed_content.nil?).to eql(true)
    end
  end
  describe '#count_job' do
    it 'shows the number of job details when call the method' do
      expect(scrap.scraper).to eql(245)
    end
  end
end
