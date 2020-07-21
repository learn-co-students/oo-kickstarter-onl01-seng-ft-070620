## Projects are projects that have many backers 

class Project

    attr_accessor :backers
    attr_reader :title 

    def initialize(title)
        @title = title 
        @backers = []
    end 

    def add_backer(backer)
        @backers << backer 
        backer.back_project(self) unless backer.backed_projects.include?(self)
    end 

end 