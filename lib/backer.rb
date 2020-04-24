# require 'pry'

# require_relative 'project'
# require_relative 'project_backer'


class Backer
    attr_reader :name;

    def initialize(name)
        @name = name
    end

    def back_project(project)
        project = ProjectBacker.new(project, self)
    end

    def backed_projects
        all_projectBaker = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        all_projectBaker.map do |all_project|
            all_project.project
        end

    end


end

# binding.pry
# 0