class Backer
    attr_accessor :name, :project

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end


    def backed_projects
        all_projects = ProjectBacker.all.select do |project|
            project.backer == self
        end
        all_projects.map {|pbproject| pbproject.project}
     end

end