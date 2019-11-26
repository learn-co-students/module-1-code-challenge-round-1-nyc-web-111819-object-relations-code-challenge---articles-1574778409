class Author
  attr_reader :name

  # Array of all authors typical, but not required by spec
  # @@all = []

  def initialize(name)
    @name = name
    # self.class.all << self
  end

  # def self.all
  #   @@all
  # end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    magazine_list = self.articles.map {|article| article.magazine}
    magazine_list.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    # - Returns a **unique** array of strings with the categories of the magazines the author has contributed to
    topic_area_list = self.magazines.map {|magazine| magazine.category}
    topic_area_list.uniq

  end

end
