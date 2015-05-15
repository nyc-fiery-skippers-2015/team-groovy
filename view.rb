
module View

  def get_input
    gets.chomp
  end

  def self.welcome_display
    puts "Welcome to Team Groovy's Discography App!"
    sleep 0.8
    puts "What would you like to search by?"
    self.menu
  end

  def self.menu
    puts "1. Artist"
    puts "2. Album"
  end

  def self.artist_members(members_array)
    members_array.each {|member| puts member}
  end

  def self.display_profile(profile)#string arg
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

  def self.album_options
    puts "Please type the number for which option you'd like."
    puts "1. Artist Name"
    puts "2. Artist Label"
  end

  def self.exit_menu
    puts "Type exit to quit the program."
  end

end
