require'pry'

class Backer
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def temp
    ProjectBacker.all.select do |proj| 
      proj.backer == self
    end
  end

  def backed_projects
    temp.map do |value|
      value.project
    end
  end

end