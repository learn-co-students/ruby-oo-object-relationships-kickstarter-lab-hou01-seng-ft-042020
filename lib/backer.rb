require'pry'

class Backer

  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project,self)
  end

  # def backer_array
  #   ProjectBacker.all.select do |x|
  #     x.backer = self
  #     binding.pry
  #     0
  #   end
  # end

  def backed_projects #returns an array of projects associated with this Backer instance
    bp = ProjectBacker.all.select {|object| object.backer == self} #get all objects with backer matching self
    bp.map {|x| x.project}
  end
end