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

    def projects
        ProjectBacker.all.select do |x| x.project == self
        end 
    end
    
    def backers
        projects.map do |x| x.backer end
    end 
end 