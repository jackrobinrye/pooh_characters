class PoohCharacters::CLI

    def call
        list_characters
        menu
    end 

    def list_characters
        puts "The Winnie the Pooh Characters to choose from are:"
        puts "1. Pooh"
        puts "2. Pigglet"
    end 

    def menu 
        puts "Choose the character you'd like to more info on or type 'exit':"
        input = gets.strip
        case input 
        when "1"
            puts "More info on 1"
        when "2"
            puts "More info on 2"
        end 
    end 

end 