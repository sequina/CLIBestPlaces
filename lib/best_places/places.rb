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
      #Places Class End
      end

    class CLI < Places

      def list_places
        puts "Welcome to the best places on Earth!"
        puts "Choose a Place to see its Air Quality by entering a Number : "
      end

      def call
        list_places
        scrape_places
        menu
        goodbye
      end

      def menu
        input = nil
        puts "Type exit to leave the program"

          while input != "exit"
            input = gets.strip.downcase
            case input
              when "1"
                puts "#{@@air_quality[0]}"
              when "2"
                puts "#{@@air_quality[1]}"
              when "3"
                puts "#{@@air_quality[2]}"
              when "4"
                puts "#{@@air_quality[3]}"
              when "5"
                puts "#{@@air_quality[4]}"
              when "6"
                puts "#{@@air_quality[5]}"
              when "7"
                puts "#{@@air_quality[6]}"
              when "8"
                puts "#{@@air_quality[7]}"
              when "9"
                puts "#{@@air_quality[8]}"
              when "10"
                puts "#{@@air_quality[9]}"
              when "11"
                puts "#{@@air_quality[10]}"
              when "12"
                puts "#{@@air_quality[11]}"
              when "13"
                puts "#{@@air_quality[12]}"
              when "14"
                puts "#{@@air_quality[13]}"
              when "15"
                puts "#{@@air_quality[14]}"
              when "16"
                puts "#{@@air_quality[15]}"
              when "17"
                puts "#{@@air_quality[16]}"
              when "18"
                puts "#{@@air_quality[17]}"
              when "19"
                puts "#{@@air_quality[18]}"

              else
                return "Please choose a number from the list above"
              end
            end
          end

          def goodbye
            puts "See you later!"
          end
          #Menu Def End
        end
    end
