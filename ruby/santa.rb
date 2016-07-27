class Santa 
  attr_reader :ethnicity
  attr_accessor :gender, :reindeer_ranking, :age
  
  def initialize(gender, ethnicity, age)
  puts "Initializing Santa instance ..."
  @gender = gender
  @ethnicity = ethnicity
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = age
  end

  # setter methods
# def celebrate_birthday(age)
#   @age = age + 1  
# end
  
# def get_mad_at(name)
#   @reindeer_ranking.delete(name)
#   @reindeer_ranking.insert(-1, name)
# end
  
# def change_gender(new_gender)
#   @gender = new_gender
# end
  
  def speak()
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
  
  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}"
  end
end

#santa = Santa.new("agender", "black")
#p santa.age + 1
#santa.reindeer_ranking.delete("Vixen")
#p santa.reindeer_ranking.insert(-1, "Vixen")
#santa.gender = "male"
#p santa.gender
#p santa.ethnicity

genders = ["agender", "female", "bigender", "male", "gender fluid"]
ethnicities = ["black", "white", "Latino", "Asian/Pacific Islander", "Native American"]

index = 0
while index < 20
santas = Santa.new(genders.sample, ethnicities.sample, rand(0...140))
p santas.about
index += 1
end




#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")



#santa = Santa.new
#santa.speak()
#santa.eat_milk_and_cookies("oatmeal raisin")