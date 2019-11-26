class Article

    attr_reader :author, :magazine, :title
    
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine 
        @title = title 
        self.class.all << self 
    end 

    # All of the article instances created so far
    def self.all
        @@all 
    end 

end
