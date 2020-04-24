class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer = ProjectBacker.all.select {|backer| backer.project == self}
        project_backer.map {|pb| pb.backer}
    end
end