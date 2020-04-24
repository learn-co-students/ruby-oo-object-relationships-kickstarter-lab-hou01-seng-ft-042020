class Project

    attr_accessor :title


    def initialize(t)
        @title = t
    end

    def add_backer(back)
        ProjectBacker.new(self,back)
    end

    def backers
        a = ProjectBacker.all.select do |x|
            x.project == self
        end
        
        a.map {|p_b| p_b.backer}
    end

end