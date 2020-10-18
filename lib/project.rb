class Project

attr_accessor :title
    def initialize(title)
        @title=title
        
    end

    def self.all
        @@all
    end

def add_backer(backer)
    ProjectBacker.new(self,backer)
end

def backers
        

    a=ProjectBacker.all.select do |project_backer|
        project_backer.project == self
        
    end
# binding.pry
    a.map do |project|
        project.backer
    end
      
end

end