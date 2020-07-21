class Project 

    attr_reader :title, :backers

    def initialize(title)
        @title = title 
        @backers = []
    end 

    def add_backer(backers)
        @backers << backers
        backers.backed_projects << self
    end 

end 