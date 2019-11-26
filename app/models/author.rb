class Author
  attr_accessor 
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author == self 
    end
  end

  def magazines
    m = articles.map do |article|
      article.magazine
    end
    m.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    t = magazines.map do |magazine|
      magazine.category
    end
    t.uniq
  end

end
