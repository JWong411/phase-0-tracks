#module Shout
#  def self.yell_angrily(words)
#    p words + "!!!" + " :("
#  end
#  
#  def self.yelling_happily(string)
#    p string + "!!!" + " :)"
#  end
#end

#Shout.yelling_happily("Hello")
#Shout.yell_angrily("Goodbye")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def yelling_happily(string)
    string + "!!!" + " :)"
  end
end

class Beatle
  include Shout
end

class Homer
  include Shout
end

beatle = Beatle.new
p beatle.yelling_happily("Hello")
p beatle.yell_angrily("Goodbye")

homer = Homer.new
p homer.yelling_happily("Woohoo")
p homer. yell_angrily("D'oh")
#module Flight
# def take_off(altitude)
#   puts "Taking off and ascending until reaching #{altitude} ..."
# end
#end

#class Bird
# include Flight
#end

#class Plane
# include Flight
#end

#bird = Bird.new
#bird.take_off(800)

#plane = Plane.new
#plane.take_off(30000)
