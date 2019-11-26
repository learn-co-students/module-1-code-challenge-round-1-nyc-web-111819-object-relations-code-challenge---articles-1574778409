class Author
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def articles
    Article.all.select{|article| article.author == self}
  end
  def magazines
    (articles.map{|article| article.magazine}).uniq
  end
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end
  def topic_areas
    articles = Article.all.select{|article| article.author == self}
    ((articles.map{|article| article.magazine}).map{|mag| mag.category}).uniq
  end
  def self.all
    @@all
  end
end
