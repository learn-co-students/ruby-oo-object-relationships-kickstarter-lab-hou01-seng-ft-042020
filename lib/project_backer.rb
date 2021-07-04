require 'pry'
#the joiner
#  each instance of ProjectBacker will represent an association
#  between a single backer and a single project. 
class ProjectBacker

    attr_accessor :project, :backer
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
        # binding.pry
    end 

    def self.all
        @@all
    end 
end 

