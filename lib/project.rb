
class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def add_backer(name)
        ProjectBacker.new(self,name)
    end

    def backer
        ProjectBacker.all.select {|x| x.project == self}
        
    end

    def backers
        backer.map{|x| x.backer}.uniq
    end
end