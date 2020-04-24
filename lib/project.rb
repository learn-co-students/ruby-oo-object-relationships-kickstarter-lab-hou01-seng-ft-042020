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
    ProjectBacker.new(self, backer)
  end

  def temp
    ProjectBacker.all.select do |backer|
      backer.project == self
    end
  end
  
  def backers
    temp.map do |value| 
      value.backer
    end
  end
end