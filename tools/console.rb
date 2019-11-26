require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

anna = Author.new("Anna")
ethan = Author.new("Ethan")
nymag = Magazine.new("NY Magazine", "new york")
tmag = Magazine.new("T Mag", "new york")
vogue = Magazine.new("Vogue", "fashion")

things_to_do = Article.new(anna, nymag, "Things to Do")
famous_person = Article.new(anna, nymag, "Famous Person")
t_mag_best_of = Article.new(anna, tmag, "Best Of")
best_dressed = Article.new(anna, vogue, "Best Dressed")
best_dressed2 = Article.new(anna, vogue, "Best Dressed 2")
best_dressed3 = Article.new(anna, vogue, "Best Dressed 3")

sports = Article.new(ethan, tmag, "Sports")
how_i_do_it = Article.new(ethan, nymag, "How I Do It")

### DO NOT REMOVE THIS
binding.pry

0
