class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    woof = integer.to_i
    woof.times do |woofs|
      puts "woof"
    end
  end
  
  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(n)
    years = n.to_i
    p years * 7
  end
  
  def play_dead()
    puts "*Bang!*"
    puts "*Flops over*"
  end
  
  def initialize()
    puts "Initializing new puppy instance..."
  end
  
end

#spot = Puppy.new
#spot.play_dead()

class Pokemon

  def use_move(move)
    puts "It used #{move}!"
    move
  end

  def took_damage(damage)
    puts "It took #{damage} damage from the attack!"
  end

  def initialize()
    puts "Initializing new Pokemon instance..."
  end

end

pokemons = []
index = 0
while index < 50
pikachu = Pokemon.new
pokemons << pikachu
index += 1
end

pokemons.each do |mons|
  mons.use_move("Thunderbolt")
  mons.took_damage(10)
end
