class Magazine
  attr_accessor :name, :category


  @@all = []
  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def contributors
    # Returns an array of Author instances who have 
    #   written for this magazine
    articles.map {|article| article.author}.uniq
  end

  def self.find_by_name(name)
    # Given a string of magazine's name, this method 
    #   returns the first magazine object that matches
    @@all.find {|magazine| magazine.name == name}
  end

  def article_titles
    # Returns an array strings of the titles of all 
    #   articles written for that magazine
    articles.map{|article| article.title}
  end

  def contributing_authors
    # Returns an array of authors who have written 
    #   more than 2 articles for the magazine
    contributors.select{|author| author.articles_for_magazine(self) > 2}.uniq
  end

end
