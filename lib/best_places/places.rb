require 'nokogiri'
require 'open-uri'

module BestPlaces

  class Places < CLI
    attr_accessor :name, :population, :places, :air_quality
    @@air_quality = []

      def initialize
        @places = []
      end

      # def self.all
      #   @@all ||= scrape_places
      # end
      #
      # def self.find(weather)
      #   self.all.detect do |w|
      #     weather.each{|e| @weather << e.text.strip}
      #       @weather.each do |w|
      #         i = @weather.index(w)
      #         puts "#{weather[i].text}"
      #       end
      #     end
      #   end
      # end

      def scrape_places
        doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
        places = doc.search("div.text h2.itemName")
        ranks = doc.search("div.rank")
        air_quality = doc.search("div.attributes div.bottom-left.weather span.air_quality")

        # binding.pry
        places.each{|e| @places << e.text.strip}

          @places.each do |place|
            i = @places.index(place)
          puts "#{ranks[i].text}. #{place}"
        end

        air_quality.each{|a| @@air_quality << a.text.strip}

          @@air_quality.each do |air|
            i = @@air_quality.index(air)
            # puts "#{ranks[i].text}. #{@@air_quality}"
          end
        end
      end

      # def scrape_attributes
      #   doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))


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
