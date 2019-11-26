require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

magazine1 = Magazine.new("Rolling Stone", "Music")
magazine2 = Magazine.new("People Magazine", "Absolute Garbage")
magazine3 = Magazine.new("Sports Illustrated", "Sports")
magazine4 = Magazine.new("Mad Magazine", "Parody")

author1 = Author.new("Justin Bieber")
author2 = Author.new("Flea")
author3 = Author.new("Stephen A. Smith")

article1 = Article.new(author1, magazine2, "How much I care about humans")
article2 = Article.new(author3, magazine3, "Mike Trout Wins MVP")
article3 = Article.new(author2, magazine1, "Acid for the Children")
article4 = Article.new(author2, magazine4, "Red Hot Chilli Leopards")
article5 = Article.new(author2, magazine1, "Jazz isn't dead")
article6 = Article.new(author3, magazine1, "The link between music and sports")
article7 = Article.new(author2, magazine1, "How Anthony Kiedis had zero music experience before the Chilli Peppers")

author1.add_article(magazine1, "My music isn't just for teenage girls")
author1.add_article(magazine1, "Seriously, my music isn't just for teenage girls")
author1.add_article(magazine1, "No, Seriously, my music isn't just for teenage girls")


### DO NOT REMOVE THIS
binding.pry

0
