class Author
  attr_reader :name

  @@all = [] 
  def initialize(name)
    @name = name
  
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    articles.map {|article| article.magazine}
  end

  def add_article(magazine, title)
    # Given a magazine (as Magazine instance) and a 
    #   title (as a string), creates a new Article instance 
    #   and associates it with that author and that magazine.
    Article.new(self, magazine, title)
  end

  def topic_areas
    # Returns a unique array of strings with the categories of 
    #   the magazines the author has contributed to
    magazines.map {|magazine| magazine.category}.uniq 
  end

  def articles_for_magazine(magazine)
    articles.select {|article| article.magazine == magazine}.length
  end

end
