class Article

        attr_accessor :title, :author, :magazine

        @@all = []

        def initialize(author, magazine, title)
            @title = title
            @magazine = magazine
            @author = author
            @@all << self
        end

        def self.all
            @@all
        end

        def author
            @author
        end

        def magazine
            @magazine
        end

end
