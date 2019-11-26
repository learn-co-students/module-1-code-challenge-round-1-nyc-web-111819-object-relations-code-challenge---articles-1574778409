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
    Article.all.select do |articles|
      articles.author == self
    end
  end

  def magazines 
    articles.map do |articles|
      articles.magazine
    end
  end

def add_article(magazine, title)
  Article.new(magazine, title, self)
end

def topic_areas
  var = articles.map do |articles|
    articles.magazine 
  end
  var.map do |magazines|
    magazines.category
  end
end





end
