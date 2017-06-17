require 'nokogiri'
require 'open-uri'

class BestPlaces::Scraper

  def self.scrape_places
    doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
    doc.css("div.container").each do |container|

    name = container.css("div.text h2.itemName").text
    ranks = container.css("div.rank")
      puts name
    rent_per_month = container.css("div.bottom-right.short_term_cost.cost.switchable span.value").text
    # binding.pry
    air_quality = container.css("div.attributes span.air_quality").text
      BestPlaces::Places.new(name, air_quality,rent_per_month)
    end

    # ENDS SELF.scrape_places
  end

  # ENDS CLASS
end
