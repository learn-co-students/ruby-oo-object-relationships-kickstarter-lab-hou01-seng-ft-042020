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
        ProjectBacker.new(self,backer)
    end

    def backers
    all_backers = ProjectBacker.all.select do |backer|
        backer.project == self
    end
    all_backers.map {|pbacker| pbacker.backer}
    end
    
end