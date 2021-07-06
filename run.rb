require 'pry'

require_relative 'lib/backer.rb'
require_relative 'lib/project.rb'
require_relative 'lib/project_backer.rb'

b1=Backer.new("Rim")
b2=Backer.new("Jim")
b3=Backer.new("Dim")
b4=Backer.new("Lim")

p1 = Project.new("Jan")
p2 = Project.new("Feb")
p3 = Project.new("Mar")
p4 = Project.new("Apr")



pb1 =ProjectBacker.new(p1, b3)
pb2 =ProjectBacker.new(p2, b1)
pb3 =ProjectBacker.new(p3, b2)
pb4 =ProjectBacker.new(p4, b4)







binding.pry
0