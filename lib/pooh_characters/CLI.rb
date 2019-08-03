class PoohCharacters::CLI

    def call
        list_characters
        menu
    end 

    def list_characters
        # puts "The Winnie the Pooh Characters to choose from are:"
        @characters = PoohCharacters::Character.all .each_with_index do |character, index|
            puts "#{index+1}. #{character.name}"
        end 
    end 

    def menu 
        input = nil
        while input != "exit"
            puts "Choose the character you'd like to more info on, type 'list' to list all your options again, or type 'exit' to exit:"
            input = gets.strip
            case input 
            when "1"
                puts "More info on 1"
            when "2"
                puts "More info on 2"
            when "list"
                list_characters 
            when !"exit"
                puts "Not sure what you meant there. Please try again."
            end 
        end 
        goodbye
    end 

    def goodbye
        puts "Thank you for your interest in Winnie the Pooh characters! Goodbye!"
    end

end 