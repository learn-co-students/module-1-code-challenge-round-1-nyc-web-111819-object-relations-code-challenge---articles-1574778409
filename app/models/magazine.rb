class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category

    @@all << self

  end

  def self.all
     @@all
  end

  def contributors
     Magazine.all.select do |writers|
      writers.name == name
    end
  end
 # come back here
  def self.find_by_name(string)
      Article.all.select do |person|
        person.name = string
      end
  end

  def article_titles
      Magazine.all.select do |titles|
        titles.category == self.category
      end
  end

  def contributing_authors
     Article.all.select do |con|
      con.category
     end
  end


end
