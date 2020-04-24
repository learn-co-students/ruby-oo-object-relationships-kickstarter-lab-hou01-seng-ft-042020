class Project

    attr_reader
    attr_writer
    attr_accessor :title


    @@all = []
    def initialize (title)
        @title = title

        @@all << self
    end

    def self.all
       @@all
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        var = ProjectBacker.all.select do |array|
            array.project == self
        end
        var.map do |projectbacker|
            projectbacker.backer
        end
    end
end