class Project
  # attr_accessor
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    #also add the project instance (self) to the Backer class' array of projects
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
  
end