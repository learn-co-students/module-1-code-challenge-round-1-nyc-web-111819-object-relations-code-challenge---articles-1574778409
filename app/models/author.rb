class Author

  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    self.class.all << self 
  
  end

  # All of the author instances created so far
  def self.all 
    @@all 
  end 

  # All of the articles by this particular author
  def articles
    Article.all.select do |article|
      article.author == self 
    end 
  end 

  # All of the magazines this author has written for
  def magazines 
    unique_magazines = articles.map do |article|
      article.magazine 
    end 
    unique_magazines.uniq
  end 

  # Adds a new article by this author
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 

  # All of the topic areas of magazines this author has written for 
  def topic_areas
    unique_topics = magazines.map do |magazine|
      magazine.category 
    end 
    unique_topics.uniq
  end 

end
