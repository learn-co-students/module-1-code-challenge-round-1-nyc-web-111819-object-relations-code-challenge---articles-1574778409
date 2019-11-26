require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Alice")
author2 = Author.new("Ben")
author3 = Author.new("Claudia")
author4 = Author.new("Dooder")

magazine1 = Magazine.new("Z mag", "Humor")
magazine2 = Magazine.new("Y mag", "Fashion")
magazine3 = Magazine.new("X mag", "Hobby")
magazine4 = Magazine.new("W mag", "Hobby")


article1 = Article.new(author1, magazine1, "Alice's Jokes")
article2 = Article.new(author2, magazine1, "Ben's Jokes")
article3 = Article.new(author3, magazine1, "Claudia's Jokes")
article4 = Article.new(author4, magazine1, "Dooder's Jokes")
article5 = Article.new(author1, magazine2, "Alice's Wardrobe")
article6 = Article.new(author2, magazine2, "Ben's Wardrobe")
article7 = Article.new(author1, magazine3, "Alice's Collections")
article8 = Article.new(author4, magazine3, "Dooder's Dangerous Dogs")
article9 = Article.new(author4, magazine3, "Dooder's Diabolical Datasets")
article10 = Article.new(author4, magazine3, "Dooder's Delicious Delicacies")
article11 = Article.new(author4, magazine4, "Dooder's Dainty Dingbats")
article12 = Article.new(author1, magazine1, "Alice's Jokes, Part II")
article13 = Article.new(author1, magazine1, "Alice's Jokes, Part III")
article4 = Article.new(author1, magazine1, "Alice's Jokes, Part IV")
article15 = Article.new(author2, magazine1, "Ben's Jokes, Part II")
article16 = Article.new(author2, magazine1, "Ben's Jokes, Part III")
article17 = Article.new(author2, magazine1, "Ben's Jokes, Part IV")
article18 = Article.new(author2, magazine1, "Ben's Jokes, Part V")






### DO NOT REMOVE THIS
binding.pry

0
