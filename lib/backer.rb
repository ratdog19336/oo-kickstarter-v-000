require 'pry'

class Backer
attr_accessor :backed_projects
attr_reader :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    #binding.pry
    project.add_backer(self)
  end

end
