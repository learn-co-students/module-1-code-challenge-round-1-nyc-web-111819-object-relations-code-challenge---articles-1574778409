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

  def contributors
    # "- Returns an array of Author instances who have written for this magazine"
    # CHOSE to make it  UNIQUE (though not specified as such in README)
    contributor_list = self.articles.map {|article| article.author}
    contributor_list.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    self.articles.map {|article| article.title}
  end

  def contributing_authors
    # for each contributor, select them if, their count of articles is more than 2
    self.contributors.select do |contributor|
      articles_for_this_mag = contributor.articles.select do |article|
        article.magazine == self
      end
      articles_for_this_mag.length > 2
    end
  end

# HELPER METHODS
  def articles
    Article.all.select {|article| article.magazine == self}
  end


end
