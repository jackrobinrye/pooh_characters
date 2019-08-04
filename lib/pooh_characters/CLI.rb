class PoohCharacters::CLI

    def call
        list_characters
        menu
    end 

    def list_characters
        # puts "The Winnie the Pooh Characters to choose from are:"
        PoohCharacters::Character.create_characters
        @characters = PoohCharacters::Character.all .each_with_index do |character, index|
            puts "#{index+1}. #{character.name}"
        end 
    end 

    def menu 
        input = nil
        while input != "exit"
            puts "Type the number for the character you'd like to more info on, type 'list' to list all your options again, or type 'exit' to exit:"
            input = gets.strip
            index = input.to_i - 1
            if index < PoohCharacters::Character.all.size
                puts "You have chosen #{PoohCharacters::Character.all[index].name}."
                puts "Type 'quote' for a random quote or type 'url' for a url to the character's main page."
                input = gets.strip 
                if input == 'quote'
                    puts PoohCharacters::Character.all[index].random_quote
                elsif input == "url"
                    puts PoohCharacters::Character.all[index].url
                end
            elsif !"exit"
                puts "Not sure what you meant there. Please try again."
            end 
        end 
        goodbye
    end 

    def goodbye
        puts "Thank you for your interest in Winnie the Pooh characters! Goodbye!"
    end

end 