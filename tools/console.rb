require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

bob = Author.new("Bob")
pat = Author.new("Pat")
sam = Author.new("Sam")
tim = Author.new("Tim")

espn = Magazine.new("The Mag", "Sports")
people = Magazine.new("People", "Culture")
readers = Magazine.new("Readers Digest", "Multi_Thing")
digest = Magazine.new("Digest", "Food")

# Join Class
nba = Article.new(bob, espn, "Basketball")
celeb = Article.new(pat, people, "Nice Pants")
plants = Article.new(sam, readers, "Green Hands")
chef = Article.new(tim, digest, "Yum Stuff")








### DO NOT REMOVE THIS
binding.pry

0
