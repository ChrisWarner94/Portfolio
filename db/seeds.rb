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
    long_description: "Really good recipe app" ,
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
    github_link: "https://github.com/ChrisWarner94/Recipeasy" ,
)

project_three = Project.create!(
    name: "Enna",
    picture_url: "homepage.png" ,
    short_description: "Introducing Enna - the innovative addiction tracking app that helps you take control of your habits.",
    long_description: "Really good recipe app" ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Recipeasy" ,
)
puts "Projects created"
puts "Creating technologies"

tech_one = Technology.create!(
    name: "Ruby",
    logo_path: "ruby.svg"

)

tech_two = Technology.create!(
    name: "Rails",
    logo_path: "rails.svg"

)

tech_three = Technology.create!(
    name: "C#",
    logo_path: "Csharp.svg"

)

tech_four = Technology.create!(
    name: "Javascript",
    logo_path: "javascript.svg"

)

tech_five = Technology.create!(
    name: "HTML",
    logo_path: "html.svg"

)

tech_six = Technology.create!(
    name: "CSS",
    logo_path: "css.svg"

)

tech_seven = Technology.create!(
    name: "Git",
    logo_path: "git.svg"

)

tech_eight = Technology.create!(
    name: "SQLite",
    logo_path: "sqlite.svg"

)

tech_nine = Technology.create!(
    name: "Postgresql",
    logo_path: "postgresql.svg"

)

tech_ten = Technology.create!(
    name: "Sass",
    logo_path: "sass.svg"

)

tech_eleven = Technology.create!(
    name: "Heroku",
    logo_path: "heroku.svg"

)
tech_twelve= Technology.create!(
    name: "Bootstrap",
    logo_path: "bootstrap.svg"

)

puts "Technologies created"
puts "seeding complete"