require_relative 'spec_helper.rb'

describe 'MainScraper' do	
	let(:mainscraper) {MainScraper.new('http://www.codecademy.com/glossary/ruby')}

	describe '.new' do
		it 'can be initialized' do
			mainscraper.should be_a(MainScraper)
		end
	end

	describe '.parse_glossary_page' do 
		it 'scapes glossary page and instantiates Term' do
			Term.reset
			mainscraper.parse_glossary_page
			Term.all.first.name.should eq("Arrays")
		end
	end
end