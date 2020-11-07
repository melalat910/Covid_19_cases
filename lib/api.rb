class API

 def self.fetch_countries
   url = "https://api.covid19api.com/summary"
   uri = URI(url)
   response = Net::HTTP.get(uri)
   hash = JSON.parse(response)
   binding.pry
   array_of_countries = hash["Countries"]

 #CountryCode
 #Slug
 #NewConfirmed
 #TotalConfirmed
 #NewDeaths
 #TotalDeaths
 #NewRecovered
 #TotalRecovered
 #Date
 #:country_code, :slug, :new_confirmed, :total_confirmed, :new_deaths, :total_deaths, :new_recovered, :total_recovered, :date

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
end
