require '../lib.scraper.rb'

describe Scraping do
  let(:scrap) { Scraping.new }
  describe '#initialize' do
    it 'initialize parsed_content to nil' do
      expect(scrap.parsed_content.nil).to eql(true)
    end
  end
  describe '#scraper' do
    it 'shows the job details when call the method' do
      expet(scrap.scraper).include?(position)
    end
  end
end
