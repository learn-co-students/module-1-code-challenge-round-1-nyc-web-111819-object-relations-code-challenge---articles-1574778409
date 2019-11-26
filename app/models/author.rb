class Author
  attr_reader :name

@@all = []
  def initialize(name)
    @name = name
  @@all << self
  end

def self.all 
@@all 
end 

def articles 
  Article.all.select do |article|
    article.author == self 
  end 
end

def magazines 
  array = []
  self.articles.each do |article|
    if !array.include?(article.magazine)
   array << article.magazine 
    end 
  end 
  return array
end 

def add_article(magazine, title)
  Article.new(self, magazine, title)
end 

def topic_areas
  array = []
  self.articles.each do |article|
    if !array.include?(article.magazine.category)
    array << article.magazine.category 
    end 
  end 
  return array 
end 
end 