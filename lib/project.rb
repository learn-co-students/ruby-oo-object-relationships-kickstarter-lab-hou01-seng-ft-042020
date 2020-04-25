class Project

  attr_reader :title

  @@all = []

  def initialize (title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self,backer)
  end

  def backers #returns an array of backers associated with this Project instance
    pb = ProjectBacker.all.select {|object| object.project == self}
    pb.map {|x| x.backer}
  end
end