require "pry"

class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def test
        ProjectBacker.all.select {|project_backer| project_backer.project == self}
    end

    def backers
        test.map {|project_backer| project_backer.backer}
    end

end