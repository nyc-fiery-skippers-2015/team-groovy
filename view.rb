
module View

  def get_input
    gets.chomp
  end

  def self.welcome_display
    puts "Welcome to Team Groovy's Discography App!"
    sleep 0.8
    puts "What artist would you like to search for?"
  end

  def self.artist_members(members_array)
    members_array.each {|member| puts member}
  end

  def self.display_profile(profile)
    puts "Profile: #{profile}"
    puts "What else would you like to view?"
    self.artist_options
  end

  def self.artist_options
    puts "Please type the number for which option you'd like."
    puts "1. Members"
    puts "2. Number of Releases"
    puts "3. List Releases"
  end

  def self.releases_options
    puts "Type the number corresponding to the album for more detail."
  end

  def self.exit_menu
    puts "Type exit to quit the program."
  end

  def self.display(input)
    puts input
  end

end
