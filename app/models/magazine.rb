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

  def contributors
    Article.all.map do |articles|
      articles.author
    end
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    Article.all.map do |article|
      article.title 
    end
  end

  def contributing_authors
    var = contributors
    if var == 2
    end
    var
  end

  

end
