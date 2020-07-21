require 'backer.rb'

class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end #initialize

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end #add_backer

end #Project
