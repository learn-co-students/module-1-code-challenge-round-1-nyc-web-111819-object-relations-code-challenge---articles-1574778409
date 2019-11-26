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


  def self.find_by_name(name)
    @@all.find {|magazine|
    magazine.name == name
    }
  end

  def magazine_articles
    Article.all.select {|article|
    article.magazine == self
    }
  end

  def contributors
    magazine_articles.map {|article|
    article.author
    }.uniq
  end

  def article_titles
    magazine_articles.map {|article|
    article.title
    }
  end


  # def contributing_authors

  # Returns an array of authors who have written 
  # more than 2 articles for the magazine

  #   author_array = magazine_articles.map {|article|
  #   article.author}
  #   author_array.max_by {|author|
  #   author_array.count(author)}
  # end


end
