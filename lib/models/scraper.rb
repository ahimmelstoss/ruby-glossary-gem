class MainScraper
	attr_accessor :glossary_page

	def initialize(glossary_page)
		self.glossary_page = Nokogiri::HTML(open(glossary_page))
	end

	def parse_glossary_page
		self.glossary_page.css('div.glossary__category').each do |term|
			Term.new.tap do |t| 
				t.name = set_name(term)
				t.definition = set_definition(term)
				t.examples = 
				t.syntax = sanitize(term.css('code.ruby').first).gsub("\r", "\n")
				t.example = sanitize(term.css('div.glossary-definition__syntax-example')[1]).gsub("\r", "\n").gsub("Example", "Example: ")
			end
		end
	end

	def set_name(term)
		sanitize(term.css("h2"))
	end

	def set_mores(term)
		sanitize(term.css("h3"))
	end

	def set_definition(term)
		sanitize(term.css('p.glossary-definition__definition').first) if term.css("h2 p")
	end

	def sanitize(term_string)
		term_string.text.force_encoding('ASCII-8BIT').gsub(/(\n)/, "").delete("\xC2").delete("\xA0")
	end

end

class MoreScraper
end