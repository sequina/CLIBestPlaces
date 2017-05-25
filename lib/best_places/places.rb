class BestPlaces::Places
  attr_accessor :name, :population

  def self.list_places

  end

  def scrape_places
    doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
  end


end
