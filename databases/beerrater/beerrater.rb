# Beer Rater

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("beer.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_beer = <<-SQL
  CREATE TABLE IF NOT EXISTS beers (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    alcoholcontent VARCHAR(255),
    style VARCHAR(255),
    rating INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_beer)

# add a test beer
# db.execute("INSERT INTO beers (name, alcoholcontent, style, rating) VALUES ('Czech Pils', '5.0%', 'Pilsner', 5)")

# create beer method

def create_beer(db, name, alcoholcontent, style, rating)
  db.execute("INSERT INTO beers (name, alcoholcontent, style, rating) VALUES (?, ?, ?, ?)", [name, alcoholcontent, style, rating])
end

#create 20 beers
#20.times do
#  create_beer(db, Faker::Beer.name, Faker::Beer.alcohol, Faker::Beer.style, Faker::Number.between(1, 10))
#end

# give user ability to see existing table data, add beers to the table, or update a table entry
puts "Would you like to see existing table data, add a beer to the table, or update an entry? (see existing, add beer, update)"
answer = gets.chomp

if answer == "see existing"
  beers = db.execute("SELECT * FROM beers")
    beers.each do |beer|
      puts "#{beer['name']} (id #{beer['id']}) is #{beer['alcoholcontent']} and a #{beer['style']}. I rate it #{beer['rating']} out of 10 stars."
    end

elsif answer == "add beer"
  puts "Please input the beer name."
  beer_name = gets.chomp
  
  puts "Please input the beer alcohol content. (e.g. 5.0%)"
  beer_percent = gets.chomp

  puts "Please input the beer style."
  beer_style = gets.chomp

  puts "Please input your rating, 1 being the lowest, and 10 being the hightest."
  beer_rating = gets.chomp.to_i

  create_beer(db, beer_name, beer_percent, beer_style, beer_rating)

  puts "Great! We've added that beer to the table!"

elsif answer == "update"
  puts "Please input the id number of the beer you'd like to update."
  beer_id = gets.chomp.to_i

  puts "Please input the column you'd like to update (e.g. name, alcoholcontent, style, rating)."
  change_type = gets.chomp

    if change_type == "name"  
      puts "Please put the new value you'd like to replace the old one with."
      beer_change = gets.chomp

      db.execute("UPDATE beers SET name = ( ? ) WHERE id= ( ? )", [beer_change, beer_id])

    elsif change_type == "alcoholcontent"
      puts "Please put the new value you'd like to replace the old one with."
      beer_change = gets.chomp

      db.execute("UPDATE beers SET alcoholcontent = ( ? ) WHERE id= ( ? )", [beer_change, beer_id])

    elsif change_type == "style"
      puts "Please put the new value you'd like to replace the old one with."
      beer_change = gets.chomp

      db.execute("UPDATE beers SET style = ( ? ) WHERE id= ( ? )", [beer_change, beer_id])          

    elsif change_type == "rating"
      puts "Please input your new rating of that beer."
      rating_change = gets.chomp.to_i

      db.execute("UPDATE beers SET ( ? ) = ( ? ) WHERE id= ( ? )", [change_type, rating_change, beer_id])

    else
      puts "That is not a valid input. Please try again."
    end
else 
  puts "That is not a valid input. Please try again."
end


