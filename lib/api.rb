class API

 def self.fetch_countries
   url = "https://api.covid19api.com/summary"
   uri = URI(url)
   response = Net::HTTP.get(uri)
   hash = JSON.parse(response)
   array_of_countries = hash["Countries"]


 array_of_countries.each do |countries_hash|
 countries = Countries.new
 countries.country_code = countries_hash["CountryCode"]
 countries.slug = countries_hash["Slug"]
 countries.new_confirmed = countries_hash["NewConfirmed"]
 countries.total_confirmed = countries_hash["TotalConfirmed"]
 countries.new_deaths = countries_hash["NewDeaths"]
 countries.total_deaths = countries_hash["TotalDeaths"]
 countries.new_recovered = countries_hash["NewRecovered"]
 countries.total_recovered = countries_hash["TotalRecovered"]
 countries.date = countries_hash["Date"]
  end
end

 def self.fetch_global
   url = "https://api.covid19api.com/summary"
   uri = URI(url)
   response = Net::HTTP.get(uri)
   hash = JSON.parse(response)
   array_of_global = hash["Global"]
binding.pry
   array_of_global.each do |global|
   global = Global.new
   global.new_confirmed = global["NewConfirmed"]
   global.total_confirmed = global["TotalConfirmed"]
   global.new_deaths = global_hash["NewDeaths"]
   global.total_deaths = global_hash["TotalDeaths"]
   global.new_recovered = global_hash["NewRecovered"]
   global.total_recovered = global_hash["TotalRecovered"]


 end
end
end
