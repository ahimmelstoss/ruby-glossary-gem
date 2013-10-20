module Persistables

  def self.extended(the_class)
    the_class.reset_all
  end

  def reset
    @@all=[]
  end

  def all
    @@all
  end

end