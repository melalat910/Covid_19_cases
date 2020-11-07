class CLI

 def start
  puts "Welcome!"
  API.fetch_countries
  self.countries
  self.global
 end
def countries
  puts "Would you like to see info on Covid-19 impact by country?"
  puts "Type 'yes' to continue or press any other key to exit"

  user_input = gets.strip.downcase
  #if user says yes
  if user_input =="yes" || user_input == "y"
  puts " Choose a country to find information about new and total confirmed deaths and recoveries of Covid-19"
    #display the list
  end

end
def global
  puts "Would you like to see info on the global impact of Covid-19?"
  puts "Type 'yes' to continue or press any other key to exit"

  user_input = gets.strip.downcase
  #if user says yes
  if user_input =="yes" || user_input == "y"
    puts "continue"

  end
 end
end
