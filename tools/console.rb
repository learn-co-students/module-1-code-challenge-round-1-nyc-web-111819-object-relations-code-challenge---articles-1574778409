require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a1 = Author.new("alanna")
a2 = Author.new("brody")
a3 = Author.new("carl")
a4 = Author.new("dana")

m1 = Magazine.new("apple", "tech")
m2 = Magazine.new("banana", "fruit")
m3 = Magazine.new("cable", "internet")
m4 = Magazine.new("ebay", "shopping")


at1 = Article.new(a1, m2, "one day")
at2 = Article.new(a2, m2, "one morning")
at3 = Article.new(a4, m2, "one night")
at4 = Article.new(a1, m2, "one evening")



### DO NOT REMOVE THIS
binding.pry

0
