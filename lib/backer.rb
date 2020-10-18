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

       a= ProjectBacker.all
       b=select do |project|
            project.backer == self
        end
        b
    end
        

end 