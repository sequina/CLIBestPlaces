class BestPlaces::CLI
attr_accessor :name, :air_quality

  def list_places
    puts "Welcome to the best places on Earth!"


    puts "Choose a Place to see its Air Quality by entering a Number : "
  end

  def call
    list_places
    BestPlaces::Scraper.scrape_places

    menu
    goodbye
  end

  def menu
    input = nil
    puts "Type exit to leave the program"

    while input != "exit"
      input = gets.strip.downcase

      place = BestPlaces::Places.all[input.to_i - 1]
      puts "Place you Chose: "
      puts place.name
      puts "Air Quality: "
      puts place.air_quality
      puts "Rent per Month: "
      puts place.rent_per_month
    end
  end

  def goodbye
    puts "See you later!"
  end
      #Menu Def End
end
