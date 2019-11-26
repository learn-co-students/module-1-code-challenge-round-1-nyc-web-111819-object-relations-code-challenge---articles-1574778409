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
  self.articles.map do |article|
  article.author
  end 
end 

def self.find_by_name(magazine_name)
  self.all.find do |mag|
    mag.name == magazine_name
  end 
end 

def article_titles
  self.articles.map do |article|
    article.title 
  end 
end

def contributing_authors_sloppy
  self.contributors.select do |contributor|
  self.contributors.count(contributor) > 2
  end 
end 

def contributing_authors
  self.contributing_authors_sloppy.uniq do |contributor|
    contributor
  end 
end 
end 