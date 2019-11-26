class Magazine

  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    self.class.all << self

  end

  # All of the articles in this magazine
  def articles 
    Article.all.select do |article|
      article.magazine == self 
    end 
  end 

   # All of the article titles in this magazine
   def article_titles
    articles.map do |article|
      article.title 
    end 
  end 

  # All of the contributors who have written for this magazine (not unique)
  def all_contributors
    articles.map do |article|
      article.author 
    end 
  end 

  # All of the contributors who have written for this magazine (unique)
  def contributors 
    all_contributors.uniq
  end 

  # Authors who have written more than one article for this magazine 
  def contributing_authors
    big_contributors = all_contributors.select do |contributor|
      all_contributors.count(contributor) > 2
    end 
    big_contributors.uniq
  end 
  
  # All of the magazine instances created so far
  def self.all
    @@all 
  end 

  # Find a magazine by its name 
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end 
  end 


end
