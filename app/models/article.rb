class Article
    
    attr_reader :author, :magazine, :title

    @@all = []
  
  def initialize(author, magazine, title)
    @magazine= magazine
    @title = title
    @author = author

    @@all << self
  end

  def self.all 
      @@all
  end

  def article 
  
  end

  def magazine
      
  end



end
