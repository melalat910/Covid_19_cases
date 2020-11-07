class Countries

 attr_accessor :country_code, :slug, :new_confirmed, :total_confirmed, :new_deaths, :total_deaths, :new_recovered, :total_recovered, :date
 @@all = []

 def initialize
   @@all << self 
 end

 def self.all
   @@all
 end
 
end
