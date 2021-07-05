class Project 
    attr_reader :title   
    def initialize(title)
      @title = title
    end 

    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end

    def backers
      ProjectBacker.all.map do |p|
        if p.project == self 
          p.backer
        end 
      end.select do |backer| 
        backer != nil
      end 
    end 
  end 