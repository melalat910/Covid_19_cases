class CLI

 def start
  puts "Welcome!"
  API.fetch_countries
  self.countries
 end

 def countries

   puts "Would you like to see info on Covid-19 impact by country?"
   puts "Type 'yes' to continue or press any other key to exit"

   user_input = gets.strip.downcase
   #if user says yes
   if user_input =="yes" || user_input == "y"
   puts "Choose a country to find info on new and total confirmed deaths and recoveries of Covid-19."
    #display the list
   display_list_of_countries
   end

 end

  def display_list_of_countries
   puts "All the countries"
   #access all the countries
   #binding.pry
   #print each one out
   Countries.all.each.with_index(1) do |countries, index|
   puts "#{index}. #{countries.slug}"

  end
 end
end
