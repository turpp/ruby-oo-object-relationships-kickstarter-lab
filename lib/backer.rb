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
         binding.pry

        ProjectBacker.all.select do |project|
            project.backer == self
            
        end
    end
        

end 