# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database"
Project.destroy_all
puts "populating database"
puts "Adding projects"
project_one = Project.create!(
    name: "Recipeasy",
    picture_url: "homepage.png" ,
    short_description: "Introducing Recipeasy - the ultimate meal planning app designed to make your life easier!",
    long_description: "An all in one online cookbook complete with a meal planner and shopping list manager to make your life easier." ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Recipeasy" ,
)

project_two = Project.create!(
    name: "Sexy Cars",
    picture_url: "homepage.png" ,
    short_description: "Introducing Sexy Cars - the premier car rental app for luxury vehicles.",
    long_description: "Really good recipe app" ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Sexy_Cars" ,
)

project_three = Project.create!(
    name: "christopher-warner.co.uk",
    picture_url: "homepage.png" ,
    short_description: "christopher-warner.co.uk - My personal portfolio site.",
    long_description: "Really good recipe app" ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Portfolio" ,
)
puts "Projects created"
puts "Creating technologies"

tech_one = Technology.create!(
    name: "Ruby",
    logo_path: "stack/ruby.svg"

)

tech_two = Technology.create!(
    name: "Rails",
    logo_path: "stack/rails.svg"

)

tech_three = Technology.create!(
    name: "C#",
    logo_path: "stack/Csharp.svg"

)

tech_four = Technology.create!(
    name: "Javascript",
    logo_path: "stack/javascript.svg"

)

tech_five = Technology.create!(
    name: "HTML",
    logo_path: "stack/html.svg"

)

tech_six = Technology.create!(
    name: "CSS",
    logo_path: "stack/css.svg"

)

tech_seven = Technology.create!(
    name: "Git",
    logo_path: "stack/git.svg"

)

tech_eight = Technology.create!(
    name: "SQLite",
    logo_path: "stack/sqlite.svg"

)

tech_nine = Technology.create!(
    name: "Postgresql",
    logo_path: "stack/postgresql.svg"

)

tech_ten = Technology.create!(
    name: "Sass",
    logo_path: "stack/sass.svg"

)

tech_eleven = Technology.create!(
    name: "Heroku",
    logo_path: "stack/heroku.svg"

)
tech_twelve= Technology.create!(
    name: "Bootstrap",
    logo_path: "stack/bootstrap.svg"

)

puts "Technologies created"
puts "seeding complete"