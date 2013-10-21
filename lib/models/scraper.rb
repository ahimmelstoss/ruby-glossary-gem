class MainScraper
	attr_accessor :glossary_page

	def initialize(glossary_page)
		self.glossary_page = Nokogiri::HTML(open(glossary_page))
	end

	def parse_glossary_page
		self.glossary_page.css('div.glossary__category').each do |term|
			Term.new.tap do |t| 
				t.name = sanitize(term.css("h2"))
				t.definition = sanitize(term.css('p.glossary-definition__definition').first)
				
			end
		end
	end

	def sanitize(term_string)
		term_string.text.force_encoding('ASCII-8BIT').gsub(/(\n)/, "").delete("\xC2").delete("\xA0")
	end

end

class MoreScraper
end