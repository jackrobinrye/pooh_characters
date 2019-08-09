class Scraper 

    def self.character_page
        #scrapes the just-pooh webpage
        @@page = Nokogiri::HTML(open("http://www.just-pooh.com/100acre.html"))
        @@page.css('div.character h2')
    end

    def self.url(index)
        "http://www.just-pooh.com#{@@page.css('div.character h2')[index].to_s.scan(/"([^"]*)"/).to_s.gsub("[", "").gsub("]", "").gsub('"', "")}"
    end 

    def self.quotes(url)
        doc = Nokogiri::HTML(open(url))
        quote_array = doc.css('#content ul').text.split(/\n+/).each do |x| 
            x.strip!
        end
        quote_array.shift
        quote_array
    end 

end 