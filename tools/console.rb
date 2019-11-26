require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Arthur Conan Doyle")
author2 = Author.new("Stephen King")
author3 = Author.new("Elizabeth Gilbert")

magazine1 = Magazine.new("National Geographic", "Science")
magazine2 = Magazine.new("New Yorker", "News")
magazine3 = Magazine.new("US Weekly", "Lifestyle")

article1 = Article.new(author2, magazine3, "Shining")
article2 = Article.new(author3, magazine2, "Eat, Pray, Love")
article3 = Article.new(author1, magazine1, "Sherlock Holmes")
article4 = Article.new(author1, magazine2, "Doctor Watson")
article5 = Article.new(author3, magazine2, "Article #2")
article6 = Article.new(author3, magazine2, "Article #3")



### DO NOT REMOVE THIS
binding.pry

0
