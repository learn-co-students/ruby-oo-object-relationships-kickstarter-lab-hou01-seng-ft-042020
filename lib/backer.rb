require "pry"

class Backer
    attr_reader :name
    attr_accessor
    

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

    def test
        ProjectBacker.all.select {|project_backer| project_backer.backer == self}
    end

    def backed_projects
        test.map {|project_backer| project_backer.project}
        # binding.pry
    end


end