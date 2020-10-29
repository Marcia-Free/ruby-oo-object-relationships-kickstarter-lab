class Project
    attr_reader :title, :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = []
        backer = ProjectBacker.all
        backer.each { |current_project|
            if current_project.project.title == title
                backers << current_project.backer
            end
    }
    backers.uniq   
    end

end