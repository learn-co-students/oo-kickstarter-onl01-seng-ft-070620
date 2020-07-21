# describe 'Project - ::new' do
#   it 'takes a title on initialization, accessible through an attribute reader' do
#     project = Project.new("Project With So Much Amaze")
#     expect(project.title).to eq("Project With So Much Amaze")
#   end

#   it 'initializes with a @backers attribute, an empty array' do
#     project = Project.new("Project With So Much Amaze")
#     expect(project.backers).to eq([])
#   end
# end


class Project
  
  attr_reader :title
  attr_accessor :backers
  
  def initialize(title)
    @title = title
    @backers = []
    
  end
  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
  
  
  
end