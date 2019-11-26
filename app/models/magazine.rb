class Magazine
  attr_accessor :name, :category

@@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end


    def contributors
    Article.all.select do |article|
      article.author == self 
    end
  end

  def self.find_by_name(name)
  end

  def article_titles
  end
  




  def self.all
    @@all
  end



end
