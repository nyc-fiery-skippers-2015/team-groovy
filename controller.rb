require 'discogs-wrapper'
require 'pry'
require_relative 'view.rb'

class Controller
  attr_accessor :wrapper, :artist
  def initialize
    @wrapper = Discogs::Wrapper.new("Test OAuth", app_key:ENV["DISCOGS_APP_KEY"] , app_secret: ENV["DISCOG_APP_SECRET"])
    run
  end

  def define_artist(name)
    wrapper.get_artist(find_id(name).to_i)
  end

  def find_id(name)
    #takes 2 args artist or release and in type, artist or releases
    search = wrapper.search(name, :per_page => 10, :type => :artist)
    search.results.first.id
  end

  def get_profile(name)
    define_artist(name).profile
  end
#artist specific queries
  def get_members(name)
    define_artist(name).members.map { |a| a.name if a["active"] == true  }.compact
  end

  def define_artist_releases(name)
    wrapper.get_artist_releases(find_id(name).to_i)
  end

  def get_no_of_releases(name)
    define_artist_releases(name).releases.count
  end

  def list_releases(name)
    define_artist_releases(name).releases.map.with_index(1) { |a, index| "#{index}. #{a.title}" }
  end

  # def get_label
  #   wrapper.get_artist_releases(find_id.to_i).releases.map { |a| a["label"] }.compact
  # end

  def run
    option = ''
    until option == 4.to_s
      View.welcome
      input = View.get_input
      find_id(input)
      profile = get_profile(input) #pass string to View.display_profile
      View.display_profile(profile)
      option = View.get_input
      if option.to_i == 1
        members = get_members(input)
        View.artist_members(members)
      elsif option.to_i == 2
        count = get_no_of_releases(input)
        View.display(count)
      elsif option.to_i == 3
        list = list_releases(input)
        View.artist_members(list)
      end
    end
  end
end

c = Controller.new




