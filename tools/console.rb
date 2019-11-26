require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


auth1 = Author.new("Jerry")
auth2 = Author.new("Elaine")
auth3 = Author.new("George")
auth4 = Author.new("Kramer")

mag1 = Magazine.new("Vogue", "Fashion")
mag2 = Magazine.new("Sports Illustrated", "Sports")
mag3 = Magazine.new("Time", "General")
mag4 = Magazine.new("Fishing Weekly", "Fishing")

art1 = Article.new(auth1, mag3, "What's the Deal..?")
art2 = Article.new(auth2, mag1, "Puffy Shirt")
art3 = Article.new(auth3, mag2, "How I Landed My Job")
art4 = Article.new(auth4, mag4, "Using Explosives to Fish")
art5 = Article.new(auth1, mag3, "Comedy in NYC")
art6 = Article.new(auth1, mag4, "Don't Fish With Newman")
art7 = Article.new(auth1, mag3, "My Career: A Retrospective")


### DO NOT REMOVE THIS
binding.pry

0
