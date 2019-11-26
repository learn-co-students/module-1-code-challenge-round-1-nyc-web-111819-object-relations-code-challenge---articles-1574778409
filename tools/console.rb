require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("shakil")
a2 = Author.new("alex")
a3 = Author.new("colin")

m1 = Magazine.new("m1", "games")
m2 = Magazine.new("m2", "cars")

s1 = Article.new(a1, m1, "t1")
s2 = Article.new(a2, m2, "t2")
s3 = Article.new(a3, m1, "t3")
s4 = Article.new(a1, m2, "t4")
s5 = Article.new(a2, m2, "t5")
s6 = Article.new(a2, m2, "t6")
s7 = Article.new(a1, m1, "t7")
s8 = Article.new(a1, m1, "t8")







### DO NOT REMOVE THIS
binding.pry

0
