require 'project.rb'

class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end #initialize

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end #back_project

end #Backer
