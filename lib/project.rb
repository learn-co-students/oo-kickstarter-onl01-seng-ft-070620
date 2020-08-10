
=begin
class Project

    attr_accessor :title

    def initialize(title)   # takes a title on initialization, accessible through an attribute reader
        @title = title
        @backers = []  # initializes with a @backers attribute, an empty array
    end

    def add_backer(backer)  # accepts a Backer as an argument and stores it in a backers array
        ProjectBacker.new(self, backer)
    end

    def backers()          # more advanced add_backer also adds the project to the backer's backed_projects array
        ProjectBacker.get_backers_by_project(self)
    end

end
=end

class Project 
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  
end

