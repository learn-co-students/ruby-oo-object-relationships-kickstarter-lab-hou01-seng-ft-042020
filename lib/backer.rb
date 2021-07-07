class Backer

    attr_reader :name

    @@all=[]

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |proj|
            proj.backer == self
          end
          project_backers.map do |proj|
            proj.project
          end
    end

end
