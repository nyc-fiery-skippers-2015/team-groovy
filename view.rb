
module View

  def self.get_input
    gets.chomp
  end

  def self.welcome
    system("clear")
    puts "*" * 42
    puts "Welcome to Team Groovy's Discography App!"
    puts "*" * 42
    puts ""
    puts ""
    sleep 0.8
    puts "What artist would you like to search for?"
  end

  def self.artist_members(members_array)
    members_array.each {|member| puts member; sleep 0.02}
    sleep 5.0

  end

  def self.display_profile(profile)
    puts ""
    puts "Profile: #{profile}"
    puts
    puts "What else would you like to view?"
    puts ""
    self.artist_options
  end

  def self.artist_options
    puts "Please type the number for which option you'd like."
    puts "1. Members"
    puts "2. Number of Releases"
    puts "3. List Releases"
    puts "4. Quit the Program"
  end

  def self.releases_options
    puts "Type the number corresponding to the album for more detail."
  end

  def self.display(input)
    puts input
    sleep 2.0
  end

end
