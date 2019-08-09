
class PoohCharacters::Character

    attr_accessor :name, :url 
    @@all = []

    def initialize(name)
        @name = name
    end 

    def self.all 
        @@all
    end 

    def self.create_characters
        #iterates through the scraped names to create character objects
        Scraper.character_page.each do |x| 
            @@all << self.new(x.text)
        end

        #iterates through the character array and assigns a url to each character 
        @@all.each_with_index do |character, index|
            character.url = Scraper.url(index)
        end 
    end 

    #prints a random quote for the given character
    def random_quote
        print Scraper.quotes(self.url).sample
    end 

end 