require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Author.new("bill")
a2 = Author.new("tom")
a3 = Author.new("gary")

m1 = Magazine.new("vouge", "fashion")
m2 = Magazine.new("home and garden", "women's")

article1 = Article.new(a1, m1, "business")
article2 = Article.new(a2, m2, "finance")
article3 = Article.new(a3, m1, "fashion")
article4 = Article.new(a1, m2, "education")
article5 = Article.new(a2, m1, "flatiron")


###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
