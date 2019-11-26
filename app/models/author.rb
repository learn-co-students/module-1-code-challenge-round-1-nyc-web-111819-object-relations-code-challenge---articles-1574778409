class Author

  attr_reader :name


  def initialize(name)
    @name = name
  end


def articles 
     Article.all.select do |article|
        article.author == self
     end 
end 

def magazines
  articles.map do |article|
    article.magazine
  end 
end 

def add_article
  Article.new("m1", "animals", self)
end 

def topic_areas

end 

end
