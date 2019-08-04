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
        #generates an array of names
        names = []
        url = "http://www.just-pooh.com/100acre.html"
        page = Nokogiri::HTML(open(url))

        page.css('div.character h2').each do |x| 
            names << x.text
        end

        #creates character objects from the name array
        names.each do |name|
            character = self.new(name)
            @@all << character
        end       
    end 

    def random_quote
        url = self.url
        doc = Nokogiri::HTML(open(url))
        parsed_info = doc.css('#content ul').text.split(/\n+/).each do |x| 
            x.strip!
        end
        parsed_info.shift
        puts parsed_info.sample
    end 

end 