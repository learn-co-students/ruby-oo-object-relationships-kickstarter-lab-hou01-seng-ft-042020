class Project

    attr_accessor :title
    def initialize(title)
        @title = title
    end


    def add_backer(backer)
        ProjectBacker.new(self, backer)
        
    end
    
  
    def backers
        ProjectBacker.all.select {|projectbacker| projectbacker.project == self}.map {|pb| pb.backer}
    end
end