class Project
    attr_reader :title

    def initialize(title)
        @title =title
    end

    def add_backer(backer)
        project = ProjectBacker.new(self, backer)
    end

    def backers
        all_projectBacker = ProjectBacker.all.select do |all_project|
            all_project.project == self
        end
        all_projectBacker.map do |project|
            project.backer
        end
    end


end
