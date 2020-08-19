require './lib/scraper.rb'

describe Scraping do
  let(:scrap) { Scraping.new }
  let(:jobs) { 'backend, ' }
  let(:array) { [1, 3, 5] }
  describe '#initialize' do
    it 'initialize url to string value' do
      expect(scrap.url).to be_a(String)
    end
    it 'initialize parsed_content to nil' do
      expect(scrap.parsed_content.nil?).to eql(true)
    end
    it 'initialize job_description  to []' do
      expect(scrap.parsed_content.nil?).to eql(true)
    end
  end
  describe '#testworks' do
    it 'display all elements of array' do
      tes = scrap.testworks(array)
      expect(tes).to eq(3)
    end
  end
end
