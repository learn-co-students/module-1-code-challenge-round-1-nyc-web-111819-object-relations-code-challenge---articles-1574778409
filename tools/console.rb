require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Edward")
author2 = Author.new("Ed")
author3 = Author.new("Edwin")

magazine1 = Magazine.new("a magazine", "sports")
magazine2 = Magazine.new("another magazine", "fashion")
magazine3 = Magazine.new("and another magazine", "food")

article1 = Article.new("Edward","a magazine", "a title")
article2 = Article.new("Ed", "another magazine", "another title")
article3 = Article.new("Edwin", "and another magazine", "and another title")


### DO NOT REMOVE THIS
binding.pry

0
