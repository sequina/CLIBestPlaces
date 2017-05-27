class BestPlaces::Places
  attr_accessor :name, :population, :places
    @places = []

  def self.list_places
    # puts "this is inside list places"


  end

  # def self.array_list
  # end

  def self.scrape_places
    doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
    places = doc.search("div.text h2.itemName").text
    
    @places.each_with_index do |place|
      puts "you are now in title"
      @places << self.scrape_places
      puts "You Pushed Some Data to Places!"
    end
    # binding.pry
  end
end
