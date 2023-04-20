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

puts "seeding complete"