class Magazine
  @@all = []
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def contributors
    Article.all.select do |article|
      article.magazine == self
    end 
  end 

  def find_by_name(name)
    Magazine.all.find do |name|
    magazine.name == self
    end
  end 


  def self.all
    @@all
  end

end
