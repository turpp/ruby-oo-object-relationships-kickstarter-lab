require 'pry'

class Backer
attr_reader :name
    def initialize(name)
        @name=name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        

        a=ProjectBacker.all.select do |project|
            project.backer == self
            
        end

        a.map do |project|
            project.project
        end
        # binding.pry
    end
        

end 