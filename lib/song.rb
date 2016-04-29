
require_relative '../lib/memorable.rb'
require_relative '../lib/paramble.rb'

class Song
  extend Memorable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name}
  #end

  def artist=(artist)
    @artist = artist
  end

  #def self.reset_all
  #  @@songs.clear
  #end


  #def self.count
  #  self.all.count
  #end

  def self.all
    @@songs
  end
end
