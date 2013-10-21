require_relative 'spec_helper.rb'

describe 'MainScraper' do	
	let(:mainscraper) {MainScraper.new('http://www.codecademy.com/glossary/ruby')}
	let(:term){Term.all.first}

	describe '.new' do
		it 'can be initialized' do
			mainscraper.should be_a(MainScraper)
		end
	end

	describe '.parse_glossary_page' do 
		it 'scapes glossary page and instantiates Term' do
			Term.reset
			mainscraper.parse_glossary_page
			Term.all[9].name.should eq("puts vs. print")
		end
	end

	 describe '.definition' do 
    it 'sets and scrapes the defition for the term' do
      term.definition.should eq("An array is a Ruby data type that holds an ordered collection of values, which can be any type of object including other arrays.")
    end
  end

end



