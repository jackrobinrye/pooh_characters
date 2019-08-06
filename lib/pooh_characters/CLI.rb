class PoohCharacters::CLI

    def call
        PoohCharacters::Character.create_characters
        list_characters
        menu
    end 

    def list_characters
        # puts "The Winnie the Pooh Characters to choose from are:"
        @characters = PoohCharacters::Character.all .each_with_index do |character, index|
            puts "#{index+1}. #{character.name}"
        end 
    end 

    def intro_prompt
        puts "Type the number for the character you'd like to more info on, type 'list' to list all your options again, or type 'exit' to exit:"
    end 

    def second_prompt(index)
        puts "You have chosen #{PoohCharacters::Character.all[index].name}."
        puts "Type 'quote' for a random quote, type 'url' for a url to the character's main page, type 'list' to repeat the list of characters, or type 'exit' to return to the previous menu."
    end

    def sorry 
        puts "Not sure what you meant there. Please try again."
    end 

    def goodbye
        puts "Thank you for your interest in Winnie the Pooh characters! Goodbye!"
    end

    def menu 
        input = nil

        while input != "exit"
            intro_prompt
            input = gets.strip
            index = input.to_i - 1

            if index < PoohCharacters::Character.all.size && index >= 0
                inner_input = nil
                while inner_input != "exit"
                    second_prompt(index)
                    inner_input = gets.strip 
                    if inner_input == 'quote'
                        if index == 9 
                            puts "There are no quotes for Heffalump. Sorry!"
                        else 
                            puts PoohCharacters::Character.all[index].random_quote
                        end 
                    elsif inner_input == "url"
                        puts PoohCharacters::Character.all[index].url
                    elsif inner_input == "exit"
                        break
                    elsif inner_input == "list"
                        list_characters
                    else 
                        sorry
                    end
                end 

            elsif input == "list"
                list_characters
            else 
                sorry
            end 

        end 
        goodbye
    end 

end 