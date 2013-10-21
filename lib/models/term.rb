class Term
	attr_accessor :name, :definition, :syntax_comment, :syntax_code, :syntax, :example, :more

  @@all=[]

  # extend Persistables

  def initialize
    @@all<<self
  end
  

  def self.reset
    @@all=[]
  end

  def self.all
    @@all
  end

end