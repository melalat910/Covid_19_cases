class CLI

 def start
  puts "Welcome!"
  API.fetch_global
  API.fetch_countries
  self.global
  self.countries
 end

 def global
   puts "Would you like to see the global impact of Covid-19?"
   puts "Type 'yes' if you would like to continue."
   user_input = gets.strip.downcase
   if user_input =="yes" || user_input == "y"
  puts "This information will tell you about the global ipact of Covid-19."

  display_global_details
  sleep(3)

 end

 def display_global_details(global)
   sleep(3)
   puts "\n"
   puts "New Confirmed Cases: " + global.new_confirmed.to_s
   puts "Total Confirmed Cases: " + global.total_confirmed.to_s
   puts "New Deaths: " + global.new_deaths.to_s
   puts "Total Deaths: " + global.total_deaths.to_s
   puts "New Recoveries: " + global.new_recovered.to_s
   puts "Total Recoveries: " + global.total_recovered.to_s
 end

 def countries

   puts "Would you like to see info on Covid-19 impact by country?"
   puts "Type 'yes' to continue, or press any other key to exit."

   user_input = gets.strip.downcase
   if user_input =="yes" || user_input == "y"
   puts "Choose a country to find info on new and total confirmed deaths and recoveries of Covid-19."

   display_list_of_countries
   ask_user_to_choose_countries

   sleep(3)
   puts "\n"

   countries
 else
  puts "Wear Your Mask!"
 end

 end

  def display_list_of_countries
   puts "All the countries."
   Countries.all.each.with_index(1) do |countries, index|
   puts "#{index}. #{countries.slug}"
  end
end

  def ask_user_to_choose_countries
   puts "Choose the number of the country you would like information on."
   index = gets.strip.to_i - 1

  until index.between?(0, Countries.all.length - 1)
   puts "Sorry invalid input. Choose a valid number."
   index = gets.strip.to_i - 1
  end
  countries_instance = Countries.all[index]
  puts countries_instance.slug
  display_countries_details(countries_instance)
  end
  def display_countries_details(countries)
    sleep(3)
    puts "\n"
    puts "Country Code: " + countries.country_code.to_s
    puts "Country Name: " + countries.slug
    puts "New Confirmed Cases: " + countries.new_confirmed.to_s
    puts "Total Confirmed Cases: " + countries.total_confirmed.to_s
    puts "New Deaths: " + countries.new_deaths.to_s
    puts "Total Deaths: " + countries.total_deaths.to_s
    puts "New Recoveries: " + countries.new_recovered.to_s
    puts "Total Recoveries: " + countries.total_recovered.to_s
    puts "Date: " + countries.date

  end
 end
 end
