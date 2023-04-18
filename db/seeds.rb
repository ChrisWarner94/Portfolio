# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database"
project.Destroy.all!
puts "populating database"

project_one = Project.create!(
    name: "1"
    picture_url: "images/homepage.png" ,
    short_description: "Recipe app" ,
    long_description: "Really good recipe app" ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Recipeasy" ,
)

project_two = Project.create!(
    name: "2"
    picture_url: "images/homepage.png" ,
    short_description: "Recipe app" ,
    long_description: "Really good recipe app" ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Recipeasy" ,
)

project_three = Project.create!(
    name: "3"
    picture_url: "images/homepage.png" ,
    short_description: "Recipe app" ,
    long_description: "Really good recipe app" ,
    demo_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ" ,
    host_link: "https://recipeeasy.herokuapp.com/" ,
    github_link: "https://github.com/ChrisWarner94/Recipeasy" ,
)