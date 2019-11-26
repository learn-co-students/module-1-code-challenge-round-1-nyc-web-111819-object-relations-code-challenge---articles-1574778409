require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Rita Skeeter")
author2 = Author.new("Elphias Doge")
author3 = Author.new("Xenophilius Lovegood")

magazine1 = Magazine.new("The Daily Prophet", "news")
magazine2 = Magazine.new("The Squibler", "rumors")

article1 = Article.new(author1, magazine1, "Is Hogwarts Up to Snuff?")
article2 = Article.new(author1, magazine1, "The 'NEW' Chosen One?")
article3 = Article.new(author3, magazine2, "The Department of Mysteries Mysterious Origins")

author2.add_article(magazine1, "Proper Etiquette")
author2.add_article(magazine1, "Dumbledore, My Greatest Friend")
author2.add_article(magazine2, "Dragon Pox, an Autobiography")

find1 = Magazine.find_by_name("The Squibler")

### DO NOT REMOVE THIS
binding.pry

0
