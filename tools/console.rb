require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

au1 = Author.new("Sean")
au2 = Author.new("Pete")
au3 = Author.new("Joe")

m1 = Magazine.new("Poop", "Stuff")
m2 = Magazine.new("More Poop", "More Stuff")
m3 = Magazine.new("Blahhh", "Bleeeehhh")

a1 = Article.new(au1, m1, "Poop")
a2 = Article.new(au2, m2, "More Poop")
a3 = Article.new(au1, m2, "Lots of Poop")
a4 = Article.new(au2, m1, "Lots of Poop2")
a5 = Article.new(au1, m3, "Lots of Poop3")
a5 = Article.new(au2, m3, "Lots of Poop4")
a6 = Article.new(au3, m1, "Lots of Poop4")
a7 = Article.new(au3, m1, "Lots of Poop4")

### DO NOT REMOVE THIS
binding.pry

0
