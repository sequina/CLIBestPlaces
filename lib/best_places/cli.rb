class BestPlaces::CLI


  def list_places
    puts "Welcome to the best places on Earth!"
    puts @places = BestPlaces::Places.list_places
  end

  def call
    list_places
    menu
    goodbye
  end


def menu
    input = nil
    puts "Enter something - testing: "
    puts "Type exit to exit the program"

    while input != "exit"
      input = gets.strip.downcase
      case input
        when "xbox"
          puts "List of XBOX games with release dates"
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
