
class Project

    attr_accessor :title
    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end     

    def projects
        ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end 
    end 

    def backers
        projects.map {|each_project| each_project.backer}.uniq
    end 

end 