module BestPlaces
 class CLI < Places

    def menu
      input = nil
      puts "Enter something - testing: "
      puts "Type exit to exit the program"

      while input != "exit"
        input = gets.strip.downcase
        case input
        when "1"
            puts "#{ranks[0]}. #{@@air_quality}"
          when "ps4"
            puts "List of XBOX games with release dates"
          else
            puts "Please choose a console from the list above"
          end
        end
      end

    def goodbye
      puts "See you later!"
    end

  end
end
