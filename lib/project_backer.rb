class ProjectBacker

    @@all = []
    attr_accessor :project, :backer


        def initialize(proj,back)
            @project = proj
            @backer = back
            @@all << self
        end

        def self.all
            @@all
        end



end