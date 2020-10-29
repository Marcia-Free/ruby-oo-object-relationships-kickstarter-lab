class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = []
        projects = ProjectBacker.all
        projects.each { |current_project|
            if current_project.backer.name == name
                backed_projects << current_project.project  
            end
    }
    backed_projects.uniq   
    end
end