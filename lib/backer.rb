require 'pry'

class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
    # @backed_projects << self
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end

# logan = Backer.new("Logan") #=> Logan