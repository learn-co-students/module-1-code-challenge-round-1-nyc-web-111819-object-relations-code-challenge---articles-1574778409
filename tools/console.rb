require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

auth1 = Author.new("Alex")
auth2 = Author.new("Zalmy")
auth3 = Author.new("Shakil")
mag1 = Magazine.new("Publishers Weekly", "Literature")
mag2 = Magazine.new("NY Review of Books", "Literature")
mag3 = Magazine.new("Journal of Singularities", "Pure Math")
art1 = Article.new(auth1, mag1, "Literature")
art2 = Article.new(auth2, mag2, "Books")
art3 = Article.new(auth3, mag3, "Abstract Algebra")
art4 = Article.new(auth1, mag2, "More Literature")
art5 = Article.new(auth2, mag3, "Topology")
auth1.add_article(mag1, "Movies!")
auth1.add_article(mag1, "Books!")

binding.pry

0
