class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    self.class.all << self
  end

  def self.all 
    @@all 
  end

  def all_articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributers
    a = all_articles.map do |article|
      article.author
    end
    a.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    all_articles.map do |article|
      article.title 
    end
  end

  def contributing_authors
    authors = all_articles.map do |article|
      article.author 
    end
    count = Hash.new(0)
    authors.each do |author|
      count[author] += 1
    end
    count.delete_if {|key, value| value < 2}
    count.keys
  end
    
end
