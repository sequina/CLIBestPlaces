require 'nokogiri'
require 'open-uri'


class BestPlaces::Places
  attr_accessor :name, :air_quality, :rent_per_month
  #@@air_quality = []
  @@all_places = []

  def initialize(name, air_quality,rent_per_month)
    @@all_places << self
    @name = name
    @air_quality = air_quality
    @rent_per_month = rent_per_month
  end

   def self.all
     @@all_places
   end

    # def self.scrape_places
    #   doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
    #   doc.css("div.container").each do |container|
    #
    #   name = container.css("div.text h2.itemName").text
    #   ranks = container.css("div.rank")
    #     puts name
    #
    #   air_quality = container.css("div.attributes span.air_quality").text
    #     BestPlaces::Places.new(name, air_quality)
    #   end

    # end
end
