require 'nokogiri'
require 'open-uri'

module BestPlaces

  class Places < CLI
    attr_accessor :name, :population, :places, :weather

      def initialize
        @places = []
        @weather = []
      end

      def scrape_places
        doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
        places = doc.search("div.text h2.itemName")
        ranks = doc.search("div.rank")
        # weather = doc.search("div.attributes div.bottom-left.weather")
        weather = doc.search("div.attributes div.bottom-left.weather span.value")
        # binding.pry
        places.each{|e| @places << e.text.strip}

          @places.each do |place|
            i = @places.index(place)
          puts "#{ranks[i].text}. #{place}"
        end

        weather.each{|w| @weather << w.text.strip}
          @weather.each do |w|
            i = @weather.index(weather)
            puts "#{weather}"
          end
      end
    end

     class CLI

       def list_places
         puts "Welcome to the best places on Earth!"
       end

       def call
         list_places
         scrape_places
         menu
         goodbye
       end

     end
  end
