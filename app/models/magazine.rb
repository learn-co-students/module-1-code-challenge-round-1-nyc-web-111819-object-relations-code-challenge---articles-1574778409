class Magazine
  attr_accessor :name, :category
  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def contributors
    articles = Article.all.select{|article| article.magazine == self}
    (articles.map{|article| article.author}).uniq
  end
  def self.find_by_name(name)
    @@all.find{|magazine| magazine.name == name}
  end
  def article_titles
    (Article.all.select{|article| article.magazine == self}).map{|article| article.title}
  end
  def contributing_authors #####
    articles = Article.all.select{|article| article.magazine == self}
    articles = articles.map{|article| article.author}
    authors = []
    for x in articles do
      if articles.count(x) > 1
        authors << x
      end
    end
    authors.uniq
  end
  def self.all
    @@all
  end
end
