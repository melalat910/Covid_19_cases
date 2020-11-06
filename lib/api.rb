class API

 def self.fetch_countries
   url = "https://api.covid19api.com/summary"
   binding.pry
   uri = URI(url)
   response = Net::HTTP.get(uri)
   hash = JSON.parse(response)
 end

end
