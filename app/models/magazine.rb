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
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    articles.map do |article|
      article.author
    end
  end

  def self.find_by_name(mag_name)
    Magazine.all.find do |magazine|
      magazine.name == mag_name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributing_authors_name
    contributors.map do |contributor|
      contributor.name
    end.sort
  end

  def contributing_authors
    authors = []
    contributing_authors_name.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
    
  end

end

# counts = Hash.new(0)
# names.each { |name| counts[name] += 1 }

# Magazine#contributing_authors
# Returns an array of authors who have written 
# more than 2 articles for the magazine