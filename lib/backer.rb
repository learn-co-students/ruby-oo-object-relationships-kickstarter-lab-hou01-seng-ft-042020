class Backer

    attr_accessor :name



    def initialize(n)
        @name = n
    end

    def back_project(proj)
        ProjectBacker.new(proj,self)
    end

    def backed_projects
        a = ProjectBacker.all.select do |x|
            x.backer == self
        end
        
        a.map {|p_b| p_b.project}
        
    end

end