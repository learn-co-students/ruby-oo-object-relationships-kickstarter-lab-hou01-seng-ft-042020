
class Backer

    attr_accessor :name
    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def projects
       ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
            # binding.pry
        end
    end

    def backed_projects
        projects.map {|each_project| each_project.project }.uniq
    end 

end