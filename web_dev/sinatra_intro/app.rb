# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that displays an address
get '/contact' do
  "14 Wall Street, New York, NY 10005"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a route that takes a person's name and prints it alongside
get '/great_job/:person' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good job!"
  end
end

# write a route that allows you to search by campus and display all students on that campus
get '/students/by/:campus' do
  campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  response = ""
  campus.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response    
end


#Is Sinatra the only web app library in Ruby? What are some others?
#Rails is another popular one that I've heard of. Others that I found when I Googled include Rack 'n' ALternatives, Volt, Async Web (Socket) Frameworks, and more

#Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# Googled pretty much the exact question and came up wiht something called Heroku, DataMapper, and a few others. I assume that they work more or less in the same way.

#What is meant by the term web stack?
# A web stack is the collection of software required for web development. At a minimum, it contains an OS, a programming language, 
# database software, and a web server.