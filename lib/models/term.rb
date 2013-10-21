class Term
	attr_accessor :name, :definition, :syntax_comment, :syntax, :example, :more, :examples

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