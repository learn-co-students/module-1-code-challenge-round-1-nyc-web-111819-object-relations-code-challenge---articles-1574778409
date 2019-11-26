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
    Article.all.select {|art| art.magazine == self}
  end

  def contributors
    articles.map {|art| art.author}
  end

  def self.find_by_name(name)
    @@all.find {|mag| mag.name == name}
  end

  def article_titles
    articles.map {|art| art.title}
  end 

  def contributing_authors
    # still working - need to return key of hash (auth instance)
     auth_count = Hash.new(0)
    contributors.each_with_object(auth_count) {|auth, count| count[auth] +=1}
    auth_count.select {|auth, count| count > 2}
  end 

end
