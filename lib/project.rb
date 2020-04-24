class Project
    attr_accessor :title

    @@all = []

    def initialize(name)
        @title = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pb =ProjectBacker.all.select {|project| project.project == self}
        pb.map {|pb| pb.backer}
    end

end


    