
class Backer
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        

        @@all << self
    end

    def back_project(title)
        ProjectBacker.new(title,self)
    end

    def projects
        ProjectBacker.all.select {|x| x.backer == self}
        
    end

    def backed_projects
        projects.map{|x| x.project}.uniq
    end


    
end