class MainScraper
	attr_accessor :glossary_page

	def initialize(glossary_page)
		self.glossary_page = Nokogiri::HTML(open(glossary_page))
	end

	def parse_glossary_page
		self.glossary_page.css('div.glossary__category h2').each do |term|
			Term.new.tap {|t| t.name = term.text.force_encoding('ASCII-8BIT').gsub(/(\n)/, "").delete("\xC2").delete("\xA0")}
		end
	end
end

class TermScraper
	
end

class MoreScraper
end