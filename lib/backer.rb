require 'pry'

class Backer

    attr_reader
    attr_writer
    attr_accessor :name


    @@all = []
    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
       @@all
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # binding.pry
        var = ProjectBacker.all.select do |array|
            array.backer == self
        end
        var.map do |projectbacker|
            projectbacker.project
        end
    end
end