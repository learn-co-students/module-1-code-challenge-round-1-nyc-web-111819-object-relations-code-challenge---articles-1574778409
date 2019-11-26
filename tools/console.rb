require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("JK Rowling")
author2 = Author.new("Nick Sparks")
author3 = Author.new("Roald Dahl")

m1 = Magazine.new("C21", "Cars")
m2 = Magazine.new("Vogue", "Fashion")
m3 = Magazine.new("Home Deck", "Decor")


article1 = Article.new(author1, m1, "The car of 2019")
article2 = Article.new(author2, m2, "Top fashion picks of the year")
article3 = Article.new(author3, m3, "Your holiday wishlist")
article4 = Article.new(author1, m2, "Be fashionable on a budget")
article5 = Article.new(author2, m2, "Craziest hairstyles of 2019")

### DO NOT REMOVE THIS
binding.pry

0
