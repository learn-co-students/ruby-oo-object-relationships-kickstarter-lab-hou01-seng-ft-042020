class Backer
    attr_accessor :name 

    @@all = []
def initialize(name)
    @name=name 
    @@all << self 
end 

def self.all 
    @@all
end 

def back_project(project)
    ProjectBacker.new(project, self)
end 

def backed
    ProjectBacker.all.select do |x| x.backer == self end 
end 

def backed_projects
    backed.map do |x| x.project end
end 
end 