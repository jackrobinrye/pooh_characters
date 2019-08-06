
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
        #scrapes the just-pooh webpage
        page = Nokogiri::HTML(open("http://www.just-pooh.com/100acre.html"))
        #iterates through the scraped names to create character objects
        page.css('div.character h2').each do |x| 
            @@all << self.new(x.text)
        end

        #iterates through the character array and assigns a url to each character 
        @@all.each_with_index do |character, index|
            character.url = "http://www.just-pooh.com#{page.css('div.character h2')[index].to_s.scan(/"([^"]*)"/).to_s.gsub("[", "").gsub("]", "").gsub('"', "")}"
        end 
    end 

    def random_quote
        doc = Nokogiri::HTML(open(self.url))
        parsed_info = doc.css('#content ul').text.split(/\n+/).each do |x| 
            x.strip!
        end
        parsed_info.shift
        puts parsed_info.sample
    end 

end 