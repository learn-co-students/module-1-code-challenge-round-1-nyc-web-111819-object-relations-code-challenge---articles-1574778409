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

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas_mags
     Magazine.all.select do |topics|
       topics.category 
    end
  end 

  def topic_areas
     #topic_areas_mags.map do |cat|
       
    #end
  end


end
