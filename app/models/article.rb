class Article
    @@all = []
    attr_reader :author, :magazine, :title
    def initialize(author, magazine, title)
        @author = author 
        @magazine = magazine
        @title = title
        @@all << self
    end
 

    def articles
      #go thru articles and select the ones author has written
 
      
    end

    def magazines
        #go thru magazines and select the ones author has contributed 


    end 


    def self.all
        @@all
    end


end
