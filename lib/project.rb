require 'pry'

class Project

    attr_accessor :project
    attr_reader :title, :backers

    def initialize (title)
        @title = title
        @backers = []
       
    end

    def add_backer(name)
        @backers << name
        name.back_project(self)
    end

end
