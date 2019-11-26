class Author
  
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @all
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def all_articles
    Article.all.each do |article|
      article.magazine
    end
  end


  def magazines
    all_articles.select do |article|
      article.magazine == self
    end
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    Article.all.select do |article|
      article.category == self
    end
  end
  



      

  # - `Author#magazines`
  # - Returns a **unique** array of 
  # Magazine instances for which the author 
  # has contributed to

  # def magazines
  #   Article.all.select do |article|
  #     article.magazine == self
  #   end
  # end




end
