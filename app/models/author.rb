class Author
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

    def self.all
      @@all
    end
    
    def articles
      Article.all.select {|a_name| a_name.author == self.name}
    end

    def magazines
    
    end

end
