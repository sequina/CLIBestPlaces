require 'nokogiri'
require 'open-uri'

module BestPlaces

  class Places < CLI
    attr_accessor :name, :population, :places

      def initialize
        @places = []
      end

      def scrape_places
        doc = Nokogiri::HTML(open("https://nomadlist.com/best-cities-to-live"))
        places = doc.search("div.text h2.itemName")
        ranks = doc.search("div.rank")
        places.each{|e| @places << e.text.strip}

          @places.each do |place|
            i = @places.index(place)
          puts "#{ranks[i].text}. #{place}"
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
