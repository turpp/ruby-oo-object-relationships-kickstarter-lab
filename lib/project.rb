class Project

attr_accessor :title
    def initialize(title)
        @title=title
    end

def add_backer(backer)
    ProjectBacker.new(self,backer)
end

def backers
    a=ProjectBacker.all
    b=a.select do |project|
        project.project == self
    end
    b
end

end