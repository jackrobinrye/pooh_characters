
class PoohCharacters::Character

    attr_accessor :name, :blurb, :picture_url, :url 

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        pooh = self.new 
        pooh.name = "Winnie the Pooh"
        pooh.blurb = "blurb"
        pooh.picture_url = "pic url"
        pooh.url = "url"

        piglet = self.new 
        piglet.name = "Piglet"
        piglet.blurb = "blurb"
        piglet.picture_url = "pic url"
        piglet.url = "url"


        [pooh, piglet]
    end 

    def create_characters
        names = []
        page = Nokogiri::HTML(open("https://winniethepooh.disney.com/characters"))
        parsed_information = page.css('div.entity-details h3').each do |messy_name|
            name = messy_name.text.strip
            names << name
        end 
        names.each do |name|
            self.new(name)
            self.url = "https://winniethepooh.disney.com/#{name.gsub(" ", "-")}"
            specific_page = Nokogiri::HTML(open(url))
        end 

        p names
        
    end 


end 